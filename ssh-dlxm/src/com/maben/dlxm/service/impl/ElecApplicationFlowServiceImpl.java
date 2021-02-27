package com.maben.dlxm.service.impl;

import com.maben.dlxm.dao.ElecApplicationDao;
import com.maben.dlxm.dao.ElecApplicationTemplateDao;
import com.maben.dlxm.dao.ElecApproveInfoDao;
import com.maben.dlxm.dao.ElecSystemDDLDao;
import com.maben.dlxm.domain.ElecApplication;
import com.maben.dlxm.domain.ElecApplicationTemplate;
import com.maben.dlxm.domain.ElecApproveInfo;
import com.maben.dlxm.domain.ElecUser;
import com.maben.dlxm.service.ElecApplicationFlowService;
import com.maben.dlxm.util.FileUploadUtils;
import com.maben.dlxm.web.form.ProcessVariables;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.jbpm.api.ProcessEngine;
import org.jbpm.api.ProcessInstance;
import org.jbpm.api.task.Task;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.*;

@Service(value = ElecApplicationFlowService.SERVICE_NAME)
@Transactional(readOnly = true)
public class ElecApplicationFlowServiceImpl implements ElecApplicationFlowService {
    @Resource(name = ElecApplicationDao.SERVICE_NAME)
    private ElecApplicationDao elecApplicationDao;
    @Resource(name = ElecApproveInfoDao.SERVICE_NAME)
    private ElecApproveInfoDao elecApproveInfoDao;
    @Resource(name = ElecApplicationTemplateDao.SERVICE_NAME)
    private ElecApplicationTemplateDao elecApplicationTemplateDao;
    @Resource(name = ElecSystemDDLDao.SERVICE_NAME)
    private ElecSystemDDLDao elecSystemDDLDao;
    @Resource(name = "processEngine")
    private ProcessEngine processEngine;

    /**
     * 起草申请上传
     * 1：获取页面传递的申请模板ID，查询申请模板信息表，获取申请模板的信息，从而获取流程定义的key和申请文件模板名称
     * 2:组织PO对象，向申请信息表中添加数据，同时要完成申请文件的上传
     * 3：按照流程定义的key启动流程实例，同时设置流程变量
     * 4：完成当前操作人“提交申请”个人任务
     * @param elecApplication
     */
    @Transactional(isolation = Isolation.DEFAULT, propagation = Propagation.REQUIRED, readOnly = false)
    public void saveApplication(ElecApplication elecApplication) {
        /**1：获取页面传递的申请模板ID，查询申请模板信息表，获取申请模板的信息，从而获取流程定义的key和申请文件模板名称*/
        //申请模板ID
        Long applicationTemplateID = elecApplication.getApplicationTemplateID();
        //使用主键ID，获取申请模板的详细信息
        ElecApplicationTemplate elecApplicationTemplate = elecApplicationTemplateDao.findObjectById(applicationTemplateID);
        /**2:组织PO对象，向申请信息表中添加数据，同时要完成申请文件的上传*/
        this.saveApplicationAndFileUpload(elecApplication, elecApplicationTemplate);
        /**3：按照流程定义的key启动流程实例，同时设置流程变量*/
        /**
         * * 由于在Xxx.jpdl.xml中定义<task name="提交申请" g="193,95,140,64" assignee="#{application.applicationLogonName}">
         * 流程变量的名称命名“application”
         * 流程变量的值命名成javabean，javabean中的属性必须要有applicationLogonName，表示登录名，同时确立申请信息的唯一性
         */
        Map<String, ProcessVariables> variables = new HashMap<String, ProcessVariables>();
        ProcessVariables processVariables = this.copyElecApplicationToProcessVariables(elecApplication);
        variables.put("application", processVariables);
        //流程定义的key
        String key = elecApplicationTemplate.getProcessDefinitionKey();
        //使用流程定义的key启动流程实例
        ProcessInstance pi = processEngine.getExecutionService()//
                .startProcessInstanceByKey(key, variables);
        /**4：完成当前操作人“提交申请”个人任务*/
        //先查询启动流程实例后的第一个任务对象
        Task task = processEngine.getTaskService()//
                .createTaskQuery()//
                .processInstanceId(pi.getId())//使用流程实例ID，查询流程唯一的第一个任务
                .uniqueResult();
        //完成任务
        processEngine.getTaskService()//
                .completeTask(task.getId());//使用任务ID完成任务
    }

    /**
     * 我的申请列表查询
     * @param elecApplication elecApplication
     * @return List<ElecApplication>
     */
    @Override
    public List<ElecApplication> findApplicationListByCondition(ElecApplication elecApplication) {
        String condition = "";
        List<Object> paramsList = new ArrayList<Object>();
        //判断如果申请模板的值不为null
        if(elecApplication.getApplicationTemplateID()!=null){
            condition += " and o.applicationTemplateID=? ";
            paramsList.add(elecApplication.getApplicationTemplateID());
        }
        //判断如果审核状态的值不为null
        if(StringUtils.isNotBlank(elecApplication.getStatus())){
            condition += " and o.status=? ";
            paramsList.add(elecApplication.getStatus());
        }
        //以当前登录的人的登录名作为查询条件
        ElecUser elecUser = (ElecUser) ServletActionContext.getRequest().getSession().getAttribute("globle_user");
        condition += " and o.applicationLogonName = ?";
        paramsList.add(elecUser.getLogonName());
        //将List转换成Object[]
        Object [] params = paramsList.toArray();
        //排序：按照申请时间降序排列
        Map<String, String> orderby = new LinkedHashMap<String, String>();
        orderby.put("o.applyTime", "desc");
        List<ElecApplication> list = elecApplicationDao.findCollectionByConditionNoPage(condition, params, orderby);
        return list;
    }

    /**
     * 通过登录人去JBPM拿到自己的任务并返回申请vo列表
     * @return List<ElecApplication>
     */
    @Override
    public List<ElecApplication> findMyTask() {
        /**存放申请信息的List集合*/
        List<ElecApplication> applicationList = new ArrayList<ElecApplication>();
        /**1：使用当前登录名作为办理人的条件，查询JBPM的任务表，返回List<Task>*/
        ElecUser elecUser = (ElecUser) ServletActionContext.getRequest().getSession().getAttribute("globle_user");
        List<Task> list = processEngine.getTaskService()//
                .createTaskQuery()//
                .assignee(elecUser.getLogonName())//
                .list();
        /**2:遍历List集合，获取每个任务对象，从而获取对应每个任务的流程变量*/
        if(list!=null && list.size()>0){
            for(Task task:list){
                String taskId = task.getId();
                //使用任务ID获取流程变量
                ProcessVariables processVariables = (ProcessVariables) processEngine.getTaskService()//
                        .getVariable(taskId, "application");
                //将流程变量的对象，转换成ElecApplication对象
                ElecApplication elecApplication = this.pocessVariablesToElecApplication(processVariables);
                //将任务ID放置到VO对象中
                elecApplication.setTaskId(taskId);
                applicationList.add(elecApplication);
            }
        }
        return applicationList;
    }

    public Collection<String> findOutComeListByTaskId(
            ElecApplication elecApplication) {
        //任务ID
        String taskId = elecApplication.getTaskId();
        Collection<String> outcomes = processEngine.getTaskService()//
                .getOutcomes(taskId);//获取任务后指定连线的集合
        return outcomes;
    }

    @Override
    public InputStream findInputStreamWithFile(ElecApplication elecApplication) {
        //获取申请信息的ID
        Long id = elecApplication.getApplicationID();
        //使用申请信息ID，查询申请的详细信息，从而获取路径path
        ElecApplication application = elecApplicationDao.findObjectById(id);
        //获取申请标题
        String title = application.getTitle();
        //处理中文在xml中的显示，使用UTF-8进行编码
        try {
            //name = URLEncoder.encode(name, "UTF-8");
            title = new String(title.getBytes("gbk"),"iso-8859-1");
        } catch (Exception e1) {
            e1.printStackTrace();
        }
        //将标题放置到栈顶，用于在struts.xml文件中<param name="contentDisposition">attachment;filename="${title}.doc"</param>显示
        elecApplication.setTitle(title);
        //路径path
        String path = application.getPath();
        //使用路径path获取upload文件夹下资源文件，转换成InputStream输入流对象
        File file = new File(path);
        InputStream inputStream = null;
        try {
            inputStream = new FileInputStream(file);
        } catch (Exception e) {
            throw new RuntimeException();
        }
        return inputStream;
    }

    @Override
    @Transactional(isolation=Isolation.DEFAULT,propagation=Propagation.REQUIRED,readOnly=false)
    public void approve(ElecApplication elecApplication) {
        /**1：组织PO对象对象，向审核信息表添加数据*/
        this.saveApproveInfo(elecApplication);
        /**2：使用任务ID和选择下一步的连线名称，完成审核人的任务*/
        String taskId = elecApplication.getTaskId();//任务ID
        String outcome = elecApplication.getOutcome();//选则下一步的连线名称
        /**
         * 使用任务ID，获取当前任务的详细信息，从而获取流程实例的ID，该方法一定要放置到完成任务之前
         */
        Task task = processEngine.getTaskService()//
                .getTask(taskId);//使用任务ID，获取任务的对象Task
        processEngine.getTaskService()//
                .completeTask(taskId, outcome);//使用任务ID和连线的名称完成任务
        /**
         * 判断流程实例在完成任务之后是否结束，该方法一定要放置到完成任务之后调用
         *    * 获取流程实例对象
         *       * 如果pi==null：说明流程已经结束了，表示当前完成的任务是最后一个活动
         *       * 如果pi!=null：说明流程没有结束，表示当前完成的任务不是最后一个活动
         * */
        ProcessInstance pi = processEngine.getExecutionService()//
                .findProcessInstanceById(task.getExecutionId());//使用流程实例ID获取流程实例对象
        /**3：使用申请信息表的主键ID，获取申请信息，从而用于对审核状态的更新*/
        Long applicationID = elecApplication.getApplicationID();//申请信息ID
        ElecApplication application = elecApplicationDao.findObjectById(applicationID);
        /**4：获取页面选择的【同意】和【不同意】的状态（approval：true/false）*/
        boolean approval = elecApplication.isApproval();//审核状态
        //如果同意
        if(approval){
            //如果当前路程结束的话，将申请信息表的状态从审核中----->审核通过
            if(pi==null){
                application.setStatus(application.APPLICATION_PASS);
            }
        }
        //如果不同意
        else{
            /**
             *  * 如果当前流程没有结束的话，强制终止流程
             * 将审请信息表的状态从审核中----->审核不通过
             */
            if(pi!=null){
                processEngine.getExecutionService()//
                        .endProcessInstance(pi.getId(), ProcessInstance.STATE_ENDED);//强制终止流程
            }
            application.setStatus(application.APPLICATION_REJECT);
        }
    }

    @Override
    public List<ElecApproveInfo> findApproveInfoListByApplicationID(
            ElecApplication elecApplication) {
        //获取申请ID
        Long applicationID = elecApplication.getApplicationID();
        //以申请ID作为查询条件
        String condition = " and o.applicationID = ? ";
        Object [] params = {applicationID};
        //按审批时间升序排列。
        Map<String, String> orderby = new LinkedHashMap<String, String>();
        orderby.put("o.approveTime", "asc");
        List<ElecApproveInfo> list = elecApproveInfoDao.findCollectionByConditionNoPage(condition, params, orderby);
        return list;
    }

    /**组织PO对象对象，向审核信息表添加数据*/
    private void saveApproveInfo(ElecApplication elecApplication) {
        //获取当前登录人的信息
        ElecUser elecUser = (ElecUser) ServletActionContext.getRequest().getSession().getAttribute("globle_user");
        //审核信息表的对象
        ElecApproveInfo elecApproveInfo = new ElecApproveInfo();
        //申请信息表的ID
        elecApproveInfo.setApplicationID(elecApplication.getApplicationID());
        //是否同意（boolean类型）
        elecApproveInfo.setApproval(elecApplication.isApproval());
        //审核意见
        elecApproveInfo.setComment(elecApplication.getComment());
        //审核人ID
        elecApproveInfo.setApproveUserID(elecUser.getUserID());
        //审核人姓名
        elecApproveInfo.setApproveUserName(elecUser.getUserName());
        //审核时间
        elecApproveInfo.setApproveTime(new Date());
        //执行保存
        elecApproveInfoDao.save(elecApproveInfo);
    }

    /**将流程变量的对象，转换成ElecApplication对象*/
    private ElecApplication pocessVariablesToElecApplication(
            ProcessVariables processVariables) {
        ElecApplication elecApplication = new ElecApplication();
        try {
            BeanUtils.copyProperties(elecApplication, processVariables);
        } catch (Exception e) {
            throw new RuntimeException();
        }
        return elecApplication;
    }

    /**完成javabean的复制，将PO对象中的属性值，设置到流程变量中*/
    private ProcessVariables copyElecApplicationToProcessVariables(ElecApplication elecApplication) {
        ProcessVariables processVariables = new ProcessVariables();
        try {
            BeanUtils.copyProperties(processVariables, elecApplication);
        } catch (Exception e) {
            throw new RuntimeException();
        }
        return processVariables;
    }

    /**组织PO对象，向申请信息表中添加数据，同时要完成申请文件的上传*/
    private void saveApplicationAndFileUpload(ElecApplication elecApplication, ElecApplicationTemplate elecApplicationTemplate) {
        //获取用户的详细信息，从Session中获取
        ElecUser elecUser = (ElecUser) ServletActionContext.getRequest().getSession().getAttribute("globle_user");
        //当前时间
        Date date = new Date();
        //组织PO对象
        //标题：（申请文件模板名称_申请人姓名_申请时间）
        elecApplication.setTitle(elecApplicationTemplate.getName() + "_" + elecUser.getUserName() + "_" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date));
        //提供传递的文件，完成文件上传，同时返回路径path
        String path = FileUploadUtils.fileReturnPath(elecApplication.getUpload());
        elecApplication.setPath(path);
        //申请时间
        elecApplication.setApplyTime(date);
        //申请状态(由于是提交申请，所有状态为审核中)
        elecApplication.setStatus(elecApplication.APPLICATION_RUNNING);
        //审核人ID
        elecApplication.setApplicationUserID(elecUser.getUserID());
        //审核人登录名
        elecApplication.setApplicationLogonName(elecUser.getLogonName());
        //审核人用户姓名
        elecApplication.setApplicationUserName(elecUser.getUserName());
        //执行保存，向申请信息表中保存一条数据
        elecApplicationDao.save(elecApplication);
    }
}

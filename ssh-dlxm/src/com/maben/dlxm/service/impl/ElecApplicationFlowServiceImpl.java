package com.maben.dlxm.service.impl;

import com.maben.dlxm.dao.ElecApplicationDao;
import com.maben.dlxm.dao.ElecApplicationTemplateDao;
import com.maben.dlxm.dao.ElecApproveInfoDao;
import com.maben.dlxm.dao.ElecSystemDDLDao;
import com.maben.dlxm.domain.ElecApplication;
import com.maben.dlxm.domain.ElecApplicationTemplate;
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

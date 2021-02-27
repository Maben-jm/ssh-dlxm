package com.maben.dlxm.web.action;

import com.maben.dlxm.domain.ElecApplication;
import com.maben.dlxm.domain.ElecApplicationTemplate;
import com.maben.dlxm.domain.ElecSystemDDL;
import com.maben.dlxm.service.ElecApplicationFlowService;
import com.maben.dlxm.service.ElecApplicationTemplateService;
import com.maben.dlxm.service.ElecSystemDDLService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.List;

@Controller("elecApplicationFlowAction")
@Scope(value = "prototype")
public class ElecApplicationFlowAction extends BaseAction<ElecApplication> {
    private ElecApplication elecApplication = super.getModel();
    @Resource(name = ElecApplicationFlowService.SERVICE_NAME)
    private ElecApplicationFlowService elecApplicationFlowService;
    @Resource(name = ElecApplicationTemplateService.SERVICE_NAME)
    private ElecApplicationTemplateService elecApplicationTemplateService;
    @Resource(name = ElecSystemDDLService.SERVICE_NAME)
    private ElecSystemDDLService elecSystemDDLService;

    /**
     * 菜单点击跳转到"起草申请"主页
     * @return /workflow/flowTemplateList.jsp
     */
    public String home(){
        final List<ElecApplicationTemplate> templateList = elecApplicationTemplateService.findApplicationTemplateList();
        request.setAttribute("templateList",templateList);
        return "home";
    }

    /**
     * 保存申请
     * @return 重定向到「我的申请」主页
     */
    public String saveApplication(){
        elecApplicationFlowService.saveApplication(elecApplication);
        return "saveApplication";
    }
    /**
     * 菜单点击跳转到"我的申请"主页
     * @return /workflow/flowMyApplicationList.jsp
     */
    public String myApplicationHome(){
        /**加载页面的下拉菜单：
         * 查询申请模板表
         * 查询数据字典表，以“审核状态”查询
         */
        //申请模板List
        List<ElecApplicationTemplate> templateList = elecApplicationTemplateService.findApplicationTemplateList();
        request.setAttribute("templateList", templateList);
        //查询数据字典，获取审核状态的列表
        List<ElecSystemDDL> systemList = elecSystemDDLService.findElecSystemDDLSbykeyword("审核状态");
        request.setAttribute("systemList", systemList);
        //组织查询条件，查询申请信息表
        List<ElecApplication> applicationList = elecApplicationFlowService.findApplicationListByCondition(elecApplication);
        //将审核状态中数据项编号转换成数据项的值
        this.initSystemDDL(applicationList);
        request.setAttribute("applicationList", applicationList);
        return "myApplicationHome";
    }

    /**将审核状态中数据项编号转换成数据项的值*/
    private void initSystemDDL(List<ElecApplication> list) {
        if(list!=null && list.size()>0){
            for(ElecApplication elecApplication:list){
                //转换过程
                String status = elecSystemDDLService.findDdlNameByKeywordAndDdlCode("审核状态", Integer.parseInt(elecApplication.getStatus()));
                elecApplication.setStatus(status);//存放数据项值
            }
        }
    }

    /**
     * 菜单点击跳转到"待我审批"主页
     * @return /workflow/flowMyTaskList.jsp
     */
    public String myTaskHome(){
        return "myTaskHome";
    }

    /**
     * 进去起草模板管理添加页面
     * @return /WEB-INF/page/workflow/flowSubmitApplication.jsp
     */
    public String submitApplication(){
        return "submitApplication";
    }
}

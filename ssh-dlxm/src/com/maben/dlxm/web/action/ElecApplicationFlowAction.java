package com.maben.dlxm.web.action;

import com.maben.dlxm.domain.ElecApplication;
import com.maben.dlxm.domain.ElecApplicationTemplate;
import com.maben.dlxm.service.ElecApplicationFlowService;
import com.maben.dlxm.service.ElecApplicationTemplateService;
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
        return "myApplicationHome";
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

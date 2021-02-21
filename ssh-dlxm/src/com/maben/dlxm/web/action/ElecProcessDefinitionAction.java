package com.maben.dlxm.web.action;

import com.maben.dlxm.service.ElecProcessDefinitionService;
import com.maben.dlxm.web.form.ProcessDefinitionBean;
import org.jbpm.api.ProcessDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.io.InputStream;
import java.util.List;

/**
 * 审批流程管理action
 */
@Controller("elecProcessDefinitionAction")
@Scope(value = "prototype")
public class ElecProcessDefinitionAction extends BaseAction<ProcessDefinitionBean> {


    private ProcessDefinitionBean processDefinitionBean = super.getModel();

    @Resource(name = ElecProcessDefinitionService.SERVICE_NAME)
    private ElecProcessDefinitionService elecProcessDefinitionService;

    /**
     * 跳转到审批流程首页
     *
     * @return /workflow/processDefinitionList.jsp
     */
    public String home(){
//        返回流程定义的最新list
        final List<ProcessDefinition> processDefinitions = elecProcessDefinitionService.findProcessDefinitionOrderByLastVersion();
        request.setAttribute("processDefinitions",processDefinitions);
        return "home";
    }

    /**
     * 去往部署流程定义页面
     * @return /workflow/processDefinitionAdd.jsp
     */
    public String add(){
        return "add";
    }

    /**
     * 保存流程定义
     * @return 关闭此页面&刷新父页面  /close.jsp
     */
    public String save(){
//        部署流程定义
        elecProcessDefinitionService.deployProcessDefinition(processDefinitionBean);
        return "save";
    }

    /**
     *
     * @return
     */
    public String downloadProcessImage(){
        //查询数据库，获取数据库中存放的资源文件，返回InputStream的形式，并将InputStream的文件流放置到栈顶中的属性inputStream中
        InputStream inputStream = elecProcessDefinitionService.findImageImputStream(processDefinitionBean);
        //将文件流放置到栈顶中
        processDefinitionBean.setInputStream(inputStream);
        return "downloadProcessImage";
    }

}

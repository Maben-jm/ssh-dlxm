package com.maben.dlxm.web.action;

import com.maben.dlxm.domain.ElecApplicationTemplate;
import com.maben.dlxm.service.ElecApplicationTemplateService;
import com.maben.dlxm.service.ElecProcessDefinitionService;
import org.apache.struts2.ServletActionContext;
import org.jbpm.api.ProcessDefinition;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.io.InputStream;
import java.util.List;

@Controller(value = "elecApplicationTemplateAction")
@Scope(value = "prototype")
public class ElecApplicationTemplateAction extends BaseAction<ElecApplicationTemplate> {

    private ElecApplicationTemplate elecApplicationTemplate = super.getModel();

    @Resource(name = ElecApplicationTemplateService.SERVICE_NAME)
    private ElecApplicationTemplateService elecApplicationTemplateService;

    @Resource(name = ElecProcessDefinitionService.SERVICE_NAME)
    private ElecProcessDefinitionService elecProcessDefinitionService;

    /**
     * 跳转到申请模板管理首页
     * @return /workflow/applicationTemplateList.jsp
     */
    public String home(){
//        查询申请模板
        final List<ElecApplicationTemplate> elecApplicationTemplates = elecApplicationTemplateService.findApplicationTemplateList();
        request.setAttribute("templateList", elecApplicationTemplates);
        return "home";
    }

    /**
     * 返回申请模板管理新增页面
     * @return /workflow/applicationTemplateAdd.jsp
     */
    public String add(){
        final List<ProcessDefinition> pds = elecProcessDefinitionService.findProcessDefinitionOrderByLastVersion();
        request.setAttribute("pds",pds);
        return "add";
    }

    /**
     * 保存申请模板
     * @return
     */
    public String save(){
        elecApplicationTemplateService.saveElecApplicationTemplate(elecApplicationTemplate);
        return "save";
    }

    /**
     * 去往编辑页面
     * @return /workflow/applicationTemplateEdit.jsp
     */
    public String edit(){
        //获取申请模板ID，查询申请模板的详细信息，放置到栈顶，支持回显
        ElecApplicationTemplate template = elecApplicationTemplateService.findApplicationTemlateByID(elecApplicationTemplate);
        //放置到栈顶
        ServletActionContext.getContext().getValueStack().pop();
        ServletActionContext.getContext().getValueStack().push(template);
        //获取最新版本的流程定义，返回List集合，用于页面下拉菜单的显示
        List<ProcessDefinition> list = elecProcessDefinitionService.findProcessDefinitionOrderByLastVersion();
        request.setAttribute("pds", list);
        return "edit";
    }

    /**
     * 编辑保存
     * @return
     */
    public String update(){
        elecApplicationTemplateService.updateApplicationTemplate(elecApplicationTemplate);
        return "save";
    }

    /**
     * 删除模板
     * @return delete
     */
    public String delete (){
        elecApplicationTemplateService.deleteApplicationTemplate(elecApplicationTemplate);
        return "delete";
    }

    /**
     * 下载模板
     * @return download
     */
    public String download(){
        InputStream inputStream = elecApplicationTemplateService.findInputStreamWithFile(elecApplicationTemplate);
        //将存放数据的InputStream输入流对象放置到模型驱动中的属性InputStream
        elecApplicationTemplate.setInputStream(inputStream);
        return "download";
    }
}

package com.maben.dlxm.web.action;

import com.maben.dlxm.domain.ElecApplicationTemplate;
import com.maben.dlxm.service.ElecApplicationTemplateService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.List;

@Controller(value = "elecApplicationTemplateAction")
@Scope(value = "prototype")
public class ElecApplicationTemplateAction extends BaseAction<ElecApplicationTemplate> {

    private ElecApplicationTemplate elecApplicationTemplate = super.getModel();

    @Resource(name = ElecApplicationTemplateService.SERVICE_NAME)
    private ElecApplicationTemplateService elecApplicationTemplateService;

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
        return "add";
    }

}

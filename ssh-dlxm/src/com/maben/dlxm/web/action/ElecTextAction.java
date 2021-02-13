package com.maben.dlxm.web.action;

import com.maben.dlxm.domain.ElecText;
import com.maben.dlxm.service.ElecTextService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import javax.naming.Name;

@Controller("elecTextAction")
@Scope(value = "prototype") //因为struts2本身是多实例，所以与spring整合需要开启action多实例
public class ElecTextAction extends BaseAction<ElecText>{

    private ElecText elecText = super.getModel();

    @Resource(name = ElecTextService.SERVICE_NAME)
    private ElecTextService elecTextService;

    public String save()throws Exception{
        elecTextService.save(elecText);
        return "success";
    }

}

package com.maben.dlxm.web.action;

import com.maben.dlxm.domain.ElecSystemDDL;
import com.maben.dlxm.service.ElecSystemDDLService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.List;

@Controller("elecSystemDDLAction")
@Scope(value = "prototype") //因为struts2本身是多实例，所以与spring整合需要开启action多实例
public class ElecSystemDDLAction extends BaseAction<ElecSystemDDL>{

    private ElecSystemDDL elecSystemDDL = super.getModel();

    @Resource(name = ElecSystemDDLService.SERVICE_NAME)
    private ElecSystemDDLService elecSystemDDLService;


    public String home(){
        List<ElecSystemDDL> list =  elecSystemDDLService.findElecSystemDDLWithDistinct();
        request.setAttribute("systemList",list);
        return "home";
    }

    public String edit(){
        final String keyword = elecSystemDDL.getKeyword();
        List<ElecSystemDDL> elecSystemDDLS = elecSystemDDLService.findElecSystemDDLSbykeyword(keyword);
        request.setAttribute("list",elecSystemDDLS);
        return "edit";
    }

    public String save(){
        elecSystemDDLService.save(elecSystemDDL);
        return "save";
    }

}

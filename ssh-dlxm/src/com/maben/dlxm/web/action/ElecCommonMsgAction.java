package com.maben.dlxm.web.action;

import com.maben.dlxm.domain.ElecCommonMsg;
import com.maben.dlxm.service.ElecCommonMsgService;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

@Controller("elecCommonMsgAction")
@Scope(value = "prototype") //因为struts2本身是多实例，所以与spring整合需要开启action多实例
public class ElecCommonMsgAction extends BaseAction<ElecCommonMsg> {

    private ElecCommonMsg elecCommonMsg = super.getModel();

    @Resource(name = ElecCommonMsgService.SERVICE_NAME)
    private ElecCommonMsgService  elecCommonMsgService;

    public String home(){
        ElecCommonMsg elecCommonMsg = elecCommonMsgService.findOne();
//        将之前的栈顶对象去除
        ServletActionContext.getContext().getValueStack().pop();
//        将最新的对象放入栈顶对象
        ServletActionContext.getContext().getValueStack().push(elecCommonMsg);
        return "home";
    }


    public String save()throws Exception{
        elecCommonMsgService.save(elecCommonMsg);
        return "save";
    }


}

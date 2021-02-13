package com.maben.dlxm.web.action;

import com.maben.dlxm.domain.ElecCommonMsg;
import com.maben.dlxm.service.ElecCommonMsgService;
import com.maben.dlxm.web.form.MenuForm;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

@Controller("elecMenuAction")
@Scope(value = "prototype") //因为struts2本身是多实例，所以与spring整合需要开启action多实例
public class ElecMenuAction extends BaseAction<MenuForm> {

    private MenuForm menuForm = super.getModel();

    @Resource(name = ElecCommonMsgService.SERVICE_NAME)
    private ElecCommonMsgService  elecCommonMsgService;

    /**
     * 首页显示
     *
     * @return 返回首页menu/home.jsp
     */
    public String home() {
        return "home";
    }


    public String title() {
        return "title";
    }

    public String left() {
        return "left";
    }

    public String change() {
        return "change";
    }

    public String loading() {
        return "loading";
    }

    public String alermStation() {
        ElecCommonMsg elecCommonMsg = elecCommonMsgService.findOne();
//        将之前的栈顶对象去除
        ServletActionContext.getContext().getValueStack().pop();
//        将最新的对象放入栈顶对象
        ServletActionContext.getContext().getValueStack().push(elecCommonMsg);
        return "alermStation";
    }

    public String alermDevice() {
        ElecCommonMsg elecCommonMsg = elecCommonMsgService.findOne();
//        将之前的栈顶对象去除
        ServletActionContext.getContext().getValueStack().pop();
//        将最新的对象放入栈顶对象
        ServletActionContext.getContext().getValueStack().push(elecCommonMsg);
        return "alermDevice";
    }

}

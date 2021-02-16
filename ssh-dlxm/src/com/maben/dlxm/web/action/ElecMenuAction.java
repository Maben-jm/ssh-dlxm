package com.maben.dlxm.web.action;

import com.maben.dlxm.domain.ElecCommonMsg;
import com.maben.dlxm.domain.ElecUser;
import com.maben.dlxm.service.ElecCommonMsgService;
import com.maben.dlxm.service.ElecUserService;
import com.maben.dlxm.util.LogonUtils;
import com.maben.dlxm.util.MD5keyBean;
import com.maben.dlxm.web.form.MenuForm;
import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.Hashtable;
import java.util.Objects;

@Controller("elecMenuAction")
@Scope(value = "prototype") //因为struts2本身是多实例，所以与spring整合需要开启action多实例
public class ElecMenuAction extends BaseAction<MenuForm> {

    private MenuForm menuForm = super.getModel();

    @Resource(name = ElecCommonMsgService.SERVICE_NAME)
    private ElecCommonMsgService elecCommonMsgService;

    @Resource(name = ElecUserService.SERVICE_NAME)
    private ElecUserService elecUserService;

    public String logout(){
        return "logout";
    }

    /**
     * 首页显示
     *
     * @return 返回首页menu/home.jsp
     */
    public String home() {
//        0:验证码比较正确性
        boolean flag = LogonUtils.checkNumber(request);
        if(!flag){
            this.addFieldError("error", "验证码输入有误");
            return "error";
        }
        final String name = menuForm.getName();
        final ElecUser elecUser = elecUserService.findUserByLogonName(name);
//        1:如果通过登录名查询查不到用户  说明登录名无效
        if (Objects.isNull(elecUser)){
            this.addFieldError("error","登录名无效！！");
            return "error";
        }
//        2：校验密码正确性
        final String password = menuForm.getPassword();
        if (StringUtils.isBlank(password)){
            this.addFieldError("error","密码不能为空！！");
            return "error";
        }
        final MD5keyBean md5keyBean = new MD5keyBean();
        final String md5Pass = md5keyBean.getkeyBeanofStr(password);
        if (!StringUtils.equals(md5Pass,elecUser.getLogonPwd())){
            this.addFieldError("error","用户名密码不匹配！！");
            return "error";
        }
//        3：验证登录人是否有角色信息
        Hashtable<String,String> roles = elecUserService.findRoleByLogonName(name);
        if(roles==null){
            this.addFieldError("error", "用户名没有分配角色");
            return "error";
        }
//        4:验证登录人有没有权限
        String popedom = elecUserService.findPopedomByLogonName(name);
        //如果String对象==null，页面上提示【当前用户对应的角色没有分配权限】
        if(StringUtils.isBlank(popedom)){
            this.addFieldError("error", "当前用户对应的角色没有分配权限");
            return "error";
        }
//        ***********验证成功************
//        记住我功能
        LogonUtils.remeberMe(request,response,name,password);
//        将用户信息放到session中
        request.getSession().setAttribute("globle_user", elecUser);
//        将角色信息放到session中
        request.getSession().setAttribute("globle_role", roles);
//        将权限信息放到session中
        request.getSession().setAttribute("globle_popedom", popedom);
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

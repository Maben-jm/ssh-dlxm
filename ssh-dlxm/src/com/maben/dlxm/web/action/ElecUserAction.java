package com.maben.dlxm.web.action;

import com.maben.dlxm.domain.ElecSystemDDL;
import com.maben.dlxm.domain.ElecUser;
import com.maben.dlxm.service.ElecSystemDDLService;
import com.maben.dlxm.service.ElecUserService;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.List;

@Controller("elecUserAction")
@Scope(value = "prototype")
public class ElecUserAction extends BaseAction<ElecUser> {

    private ElecUser elecUser = super.getModel();

    @Resource(name = ElecUserService.SERVICE_NAME)
    private ElecUserService elecUserService;

    @Resource(name = ElecSystemDDLService.SERVICE_NAME)
    private ElecSystemDDLService elecSystemDDLService;

    public String home() {
        List<ElecUser> elecUsers = elecUserService.findUserListByCondition(elecUser);
        request.setAttribute("list", elecUsers);
        return "home";
    }

    public String add() {
        this.initSystemDDL();
        return "add";
    }

    public String save() {
        elecUserService.save(elecUser);
        //获取判断的标识roleflag
        String roleflag = elecUser.getRoleflag();
        if(roleflag!=null && roleflag.equals("1")){
            //跳转到userEdit.jsp
            return edit();
        }
        //跳转到close.jsp
        return "save";
    }

    public String edit() {
        ElecUser result = elecUserService.findUserById(elecUser.getUserID());
        result.setViewflag(elecUser.getViewflag());
        result.setRoleflag(elecUser.getRoleflag());
//        将之前的栈顶对象去除
        ServletActionContext.getContext().getValueStack().pop();
//        将最新的对象放入栈顶对象
        ServletActionContext.getContext().getValueStack().push(result);
        this.initSystemDDL();
        return "edit";
    }

    public String delete(){
        elecUserService.deleteUserById(elecUser.getUserID());
        return "delete";
    }

    public String checkUser(){
        /**
         * 处理判断用户名是否存在，以登录名作为查询条件，判断登录名是否存在
         *   * 如果用户名存在，此时返回message的值为1
         *   * 如果用户名不存在，此时返回message的值为2
         * */
        //获取登录名
        String logonName = elecUser.getLogonName();
        String message = elecUserService.findMessageByLogonName(logonName);
        elecUser.setMessage(message);
        return "checkUser";
    }

    /**
     * 获取性别，所属单位，是否在职的数据列表（按照数据类型查询数据字典）
     */
    private void initSystemDDL() {
        List<ElecSystemDDL> sexList = elecSystemDDLService.findElecSystemDDLSbykeyword("性别");
        List<ElecSystemDDL> jctList = elecSystemDDLService.findElecSystemDDLSbykeyword("所属单位");
        List<ElecSystemDDL> isDutyList = elecSystemDDLService.findElecSystemDDLSbykeyword("是否在职");
        request.setAttribute("sexList", sexList);
        request.setAttribute("jctList", jctList);
        request.setAttribute("isDutyList", isDutyList);
    }


}

package com.maben.dlxm.web.action;

import com.maben.dlxm.domain.ElecSystemDDL;
import com.maben.dlxm.domain.ElecUser;
import com.maben.dlxm.service.ElecSystemDDLService;
import com.maben.dlxm.service.ElecUserService;
import com.maben.dlxm.util.ChartUtils;
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

    /**
     * 人员统计，以图形的形式输出
     * @return 跳转到system/userReport.jsp
     */
    public String chartUser(){
        //构造图形显示的数据集合:b.keyword,b.ddlName,COUNT(b.ddlCode)
        List<Object[]> list = elecUserService.findChartDataSet();
        //获取判断的标识
        String chart = request.getParameter("chart");
        if(chart!=null && chart.equals("1")){//按照fusionChartFree统计
            //组织XML的数据
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < list.size(); i++) {
                Object[] objects = (Object[])list.get(i);
                if(i==0){//组织第一个值
                    String x = "所属单位名称";
                    String y = "unit";//存在FusionChart中的一个问题，Y轴的显示不支持中文，所以我们用英文代替
                    sb.append("<graph caption='用户统计报表("+objects[0].toString()+")' xAxisName='"+x+"' bgColor='FFFFDD' yAxisName='"+y+"' showValues='1'  decimals='0' baseFontSize='18'  maxColWidth='60' showNames='1' decimalPrecision='0'> ");
                    sb.append("<set name='"+objects[1].toString()+"' value='"+objects[2].toString()+"' color='AFD8F8'/>");
                }
                if(i==1){
                    sb.append("<set name='"+objects[1].toString()+"' value='"+objects[2].toString()+"' color='F6BD0F'/>");
                }
                if(i==list.size()-1){//组织最后一个值
                    sb.append("<set name='"+objects[1].toString()+"' value='"+objects[2].toString()+"' color='8BBA00'/>");
                    sb.append("</graph>");
                }
            }
            request.setAttribute("chart", sb);
            return "chartUserBetiful";
        }
        else{//按照Jfreechart统计
            //使用Jfreechart生成柱状图，将图形生成图片保存在项目目录下chart文件夹中，同时返回文件的名称
            String filename = ChartUtils.chartUserWithBar(list);
            //将生成图片的文件名称，放置到request作用域，用于页面的显示
            request.setAttribute("filename", filename);
            return "chartUser";
        }

    }

}

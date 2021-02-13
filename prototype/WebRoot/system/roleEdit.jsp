

<%@ page language="java" pageEncoding="UTF-8"%>

<table cellSpacing="1" cellPadding="0" width="90%" align="center" bgColor="#f5fafe" border="0">
 <tr>
  <td>
   <fieldset style="width:100%; border : 1px solid #73C8F9;text-align:left;COLOR:#023726;FONT-SIZE: 12px;"><legend align="left"><a href="#" onclick="displaypermission()"><div id="permissionflag">权限分配&nbsp;&nbsp;关闭</div></a></legend>
 
     <table cellSpacing="0" cellPadding="0" width="90%" align="center" bgColor="#f5fafe" border="0" id="dataPopedom">			 
			  <tr>
				 <td class="ta_01" colspan=2 align="left" width="100%" > 
				 	全选/全不选<input type="checkbox" name="selectOperAll" onclick="checkAllOper(this)">
				 	<br>
				         
				          <br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
									<font color="red">技术设施维护管理：</font>
									
									<input type="checkbox"  name="selectoper" value="aa" checked>
									仪器设备管理
								
							
								
									<input type="checkbox"  name="selectoper" value="ab" checked>
									设备校准检修
								
								
							
								
									<input type="checkbox"  name="selectoper" value="ac" checked>
									设备购置计划
								
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
									<font color="red">技术资料图纸管理：</font>
									
									<input type="checkbox"  name="selectoper" value="ad" checked>
									资料图纸管理
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
									<font color="red">站点设备运行管理：</font>
									
									<input type="checkbox"  name="selectoper" value="ae" checked>
									站点基本信息
								
							
								
									<input type="checkbox"  name="selectoper" value="af" >
									运行情况
								
								
							
								
									<input type="checkbox"  name="selectoper" value="ag" >
									维护情况
								
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
									<font color="red">监测台建筑管理：</font>
									
									<input type="checkbox"  name="selectoper" value="ah" >
									监测台建筑管理
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
									<font color="red">系统管理：</font>
									
									<input type="checkbox"  name="selectoper" value="ai" >
									用户管理
								
							
								
									<input type="checkbox"  name="selectoper" value="aj" >
									角色管理
								
								
							
								
									<input type="checkbox"  name="selectoper" value="ak" >
									待办事宜
								
								
							
								
									<input type="checkbox"  name="selectoper" value="al" >
									数据字典维护
								
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
									<font color="red">审批流转：</font>
									
									<input type="checkbox"  name="selectoper" value="am" >
									审批流程管理
								
							
								
									<input type="checkbox"  name="selectoper" value="an" >
									申请模板管理
								
								
							
								
									<input type="checkbox"  name="selectoper" value="ao" >
									起草申请
								
								
							
								
									<input type="checkbox"  name="selectoper" value="ap" >
									待我审批
								
								
							
								
									<input type="checkbox"  name="selectoper" value="aq" >
									我的申请查询
								
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
									<font color="red">登录：</font>
									
									<input type="checkbox"  name="selectoper" value="ba" >
									首页显示
								
							
								
									<input type="checkbox"  name="selectoper" value="bb" >
									标题
								
								
							
								
									<input type="checkbox"  name="selectoper" value="bc" >
									菜单
								
								
							
								
									<input type="checkbox"  name="selectoper" value="bd" >
									改变框架
								
								
							
								
									<input type="checkbox"  name="selectoper" value="be" >
									加载
								
								
							
								
									<input type="checkbox"  name="selectoper" value="bf" >
									站点运行
								
								
							
								
									<input type="checkbox"  name="selectoper" value="bg" >
									设备运行
								
								
							
								
									<input type="checkbox"  name="selectoper" value="bh" >
									重新登录
								
								
							
								
									<input type="checkbox"  name="selectoper" value="bk" >
									重新登录
								
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
									<font color="red">代办事宜：</font>
									
									<input type="checkbox"  name="selectoper" value="ca" >
									保存
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
									<font color="red">导出设置：</font>
									
									<input type="checkbox"  name="selectoper" value="da" >
									导出设置配置
								
							
								
									<input type="checkbox"  name="selectoper" value="db" >
									导出设置保存
								
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
									<font color="red">数据字典：</font>
									
									<input type="checkbox"  name="selectoper" value="ea" >
									编辑
								
							
								
									<input type="checkbox"  name="selectoper" value="eb" >
									保存
								
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
									<font color="red">用户管理：</font>
									
									<input type="checkbox"  name="selectoper" value="fa" >
									新增
								
							
								
									<input type="checkbox"  name="selectoper" value="fb" >
									保存
								
								
							
								
									<input type="checkbox"  name="selectoper" value="fc" >
									编辑
								
								
							
								
									<input type="checkbox"  name="selectoper" value="fd" >
									删除
								
								
							
								
									<input type="checkbox"  name="selectoper" value="fe" >
									验证登录名
								
								
							
								
									<input type="checkbox"  name="selectoper" value="ff" >
									导出excel
								
								
							
								
									<input type="checkbox"  name="selectoper" value="fg" >
									excel导入页面
								
								
							
								
									<input type="checkbox"  name="selectoper" value="fh" >
									excel导入
								
								
							
								
									<input type="checkbox"  name="selectoper" value="fi" >
									人员统计
								
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
									<font color="red">角色管理：</font>
									
									<input type="checkbox"  name="selectoper" value="ga" >
									编辑
								
							
								
									<input type="checkbox"  name="selectoper" value="gb" >
									保存
								
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
									<font color="red">申请流程管理：</font>
									
									<input type="checkbox"  name="selectoper" value="ha" >
									部署流程定义
								
							
								
									<input type="checkbox"  name="selectoper" value="hb" >
									保存
								
								
							
								
									<input type="checkbox"  name="selectoper" value="hc" >
									查看流程图
								
								
							
								
									<input type="checkbox"  name="selectoper" value="hd" >
									删除流程定义
								
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
									<font color="red">申请模板管理：</font>
									
									<input type="checkbox"  name="selectoper" value="ia" >
									新增
								
							
								
									<input type="checkbox"  name="selectoper" value="ib" >
									新增保存
								
								
							
								
									<input type="checkbox"  name="selectoper" value="ic" >
									编辑
								
								
							
								
									<input type="checkbox"  name="selectoper" value="id" >
									编辑保存
								
								
							
								
									<input type="checkbox"  name="selectoper" value="ie" >
									删除
								
								
							
								
									<input type="checkbox"  name="selectoper" value="if" >
									下载
								
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
									<font color="red">申请模板管理：</font>
									
									<input type="checkbox"  name="selectoper" value="ja" >
									提交申请页面
								
							
								
									<input type="checkbox"  name="selectoper" value="jb" >
									提交申请
								
								
							
								
									<input type="checkbox"  name="selectoper" value="jc" >
									我的申请查询首页
								
								
							
								
									<input type="checkbox"  name="selectoper" value="jd" >
									待我审批首页
								
								
							
								
									<input type="checkbox"  name="selectoper" value="je" >
									跳转审批处理页面
								
								
							
								
									<input type="checkbox"  name="selectoper" value="jf" >
									下载
								
								
							
								
									<input type="checkbox"  name="selectoper" value="jg" >
									审核
								
								
							
								
									<input type="checkbox"  name="selectoper" value="jh" >
									审核历史
								
								
				     
				            
				        
				 </td>
			  </tr>						
				 <input type="hidden" name="roleID" >						
		 </table>	
        </fieldset>
	  </td>
	</tr>

	
	<tr>
		<td height=10></td>
	</tr>
	
  <tr>
	<td>
	
   <fieldset style="width:100%; border : 1px solid #73C8F9;text-align:left;COLOR:#023726;FONT-SIZE: 12px;"><legend align="left"><a href="#" onclick="displayuser()"><div id="userflag">用户分配&nbsp;&nbsp;关闭</div></a></legend>
 
	<table cellspacing="0" align="center" width="100%" cellpadding="1" rules="all" bordercolor="gray" border="1" id="dataUser"
							style="BORDER-RIGHT:gray 1px solid; BORDER-TOP:gray 1px solid; BORDER-LEFT:gray 1px solid; WORD-BREAK:break-all; BORDER-BOTTOM:gray 1px solid; BORDER-COLLAPSE:collapse; BACKGROUND-COLOR:#f5fafe; WORD-WRAP:break-word">
			    
				<tr style="FONT-WEIGHT:bold;FONT-SIZE:12pt;HEIGHT:25px;BACKGROUND-COLOR:#afd1f3">
				   <td class="ta_01"  align="center" width="20%" height=22 background="../images/tablehead.jpg">选中<input type="checkbox" name="selectUserAll" onclick="checkAllUser(this)"></td>
				   <td class="ta_01"  align="center" width="40%" height=22 background="../images/tablehead.jpg">登录名</td>
				   <td class="ta_01"  align="center" width="40%" height=22 background="../images/tablehead.jpg">用户姓名</td>
				</tr>
				 <tr onmouseover="this.style.backgroundColor = 'white'"
					onmouseout="this.style.backgroundColor = '#F5FAFE';">
					<td style="HEIGHT: 22px" class="ta_01" align="center" width="20%">
						<input type="checkbox" name="selectuser" value="123456789" checked>
					</td>
					<td style="HEIGHT: 22px" class="ta_01" align="center" width="40%">
						zhangsan
					</td>
					<td style="HEIGHT: 22px" class="ta_01" align="center" width="40%">
						张三
					</td>
				</tr>
				<tr onmouseover="this.style.backgroundColor = 'white'"
					onmouseout="this.style.backgroundColor = '#F5FAFE';">
					<td style="HEIGHT: 22px" class="ta_01" align="center" width="20%">
						<input type="checkbox" name="selectuser" value="123456789">
					</td>
					<td style="HEIGHT: 22px" class="ta_01" align="center" width="40%">
						lisi
					</td>
					<td style="HEIGHT: 22px" class="ta_01" align="center" width="40%">
						李四
					</td>
				</tr>
		</table>
    </fieldset>
	 </td>
	 </tr>
			<tr>
		   <td class="ta_01" align="center" colspan=3 width="100%"  height=20>
		   <input type="button" name="saverole" onclick="saveRole()" style="font-size:12px; color:black; height=20;width=50" value="保存">
		   </td>
		</tr>
   </table>

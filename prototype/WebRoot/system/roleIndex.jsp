


<%@ page language="java" pageEncoding="UTF-8"%>

<HTML>
	<HEAD>
		<title>角色权限管理</title>		
		<LINK href="${pageContext.request.contextPath }/css/Style.css"  type="text/css" rel="stylesheet">
		<script language="javascript" src="${pageContext.request.contextPath }/script/function.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/script/pub.js"></script>
		<script language="javascript">
		  
		 function saveRole(){
		 
           document.Form2.roleID.value=document.Form1.roleID.value;
		   document.Form2.action="saveRole.do";
		   document.Form2.submit();
		}
		
       
       function selectRole(){
          if(document.Form1.roleID.value=="0"){
          
             document.Form1.action="roleIndex.jsp";
             document.Form1.submit();            
          }else{
            Pub.submitActionWithForm('Form2','./roleEdit.jsp','Form1');
          }
       }
	   function checkAllOper(oper){
          var selectoper = document.getElementsByName("selectoper");
          for(var i=0;i<selectoper.length;i++){
          	selectoper[i].checked = oper.checked;
          }
       }
	   function checkAllUser(user){
          var selectuser = document.getElementsByName("selectuser");
          for(var i=0;i<selectuser.length;i++){
          	selectuser[i].checked = user.checked;
          }
       }
       function displayuser(){
			if(document.getElementById("dataUser").style.display == "none"){
			    document.getElementById("userflag").innerText = "用户分配 关闭";
				document.getElementById("dataUser").style.display = "";
			}
			else{
				document.getElementById("userflag").innerText = "用户分配 打开";
				document.getElementById("dataUser").style.display = "none";
			}
		}
		function displaypermission(){
			if(document.getElementById("dataPopedom").style.display == "none"){
				document.getElementById("permissionflag").innerText = "权限分配 关闭";
				document.getElementById("dataPopedom").style.display = "";
			}
			else{
				document.getElementById("permissionflag").innerText = "权限分配 打开";
				document.getElementById("dataPopedom").style.display = "none";
			}
		}
		</script>
	</HEAD>
		
	<body>
	 <Form name="Form1" id="Form1"  method="post" style="margin:0px;">
		<table cellSpacing="1" cellPadding="0" width="90%" align="center" bgColor="#f5fafe" border="0">
			<TBODY>
				<tr>
					<td class="ta_01" colspan=2 align="center" background="${pageContext.request.contextPath }/images/b-info.gif">
						<font face="宋体" size="2"><strong>角色管理</strong></font>
					</td>
				</tr>	
				<tr>
				   <td class="ta_01" colspan=2 align="right" width="100%"  height=10>
				   </td>
				</tr>		
				<tr>
					<td class="ta_01" align="right" width="35%" >角色类型&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td class="ta_01" align="left"  width="65%" >
					
					
					  <select name="roleID" class="bg" style="width:180px"  onchange="selectRole()">
						 <option value="0">请选择</option>
						 
						 <option value="1">系统管理员</option>
						 
						 <option value="2">高级管理员</option>
						 
						 <option value="3">中级管理员</option>
						 
						 <option value="4">业务用户</option>
						 
						 <option value="5">一般用户</option>
						 
						 <option value="6">普通用户</option>
						 
					  </select>  
					 
					 
					   
					  
					</td>				
				</tr>
			    
			    <tr>
				   <td class="ta_01" align="right" colspan=2 align="right" width="100%"  height=10></td>
				</tr>
				
			</TBODY>
		  </table>
 </Form>

<Form  name="Form2" id="Form2"  method="post" style="margin:0px;">
 
  <table cellSpacing="1" cellPadding="0" width="90%" align="center" bgColor="#f5fafe" border="0">
 <tr>
  <td>
   <fieldset style="width:100%; border : 1px solid #73C8F9;text-align:left;COLOR:#023726;FONT-SIZE: 12px;"><legend align="left">权限分配</legend>
 
     <table cellSpacing="0" cellPadding="0" width="90%" align="center" bgColor="#f5fafe" border="0">			 
			  <tr>
				 <td class="ta_01" colspan=2 align="left" width="100%" > 
				  
						<br>
									
									
									
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
									技术设施维护管理：
									
									<input type="checkbox"  name="selectoper" value="aa" >
									仪器设备管理
								
							
								
									<input type="checkbox"  name="selectoper" value="ab" >
									设备校准检修
								
								
							
								
									<input type="checkbox"  name="selectoper" value="ac" >
									设备购置计划
								
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
									技术资料图纸管理：
									
									<input type="checkbox"  name="selectoper" value="ad" >
									资料图纸管理
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
									站点设备运行管理：
									
									<input type="checkbox"  name="selectoper" value="ae" >
									站点基本信息
								
							
								
									<input type="checkbox"  name="selectoper" value="af" >
									运行情况
								
								
							
								
									<input type="checkbox"  name="selectoper" value="ag" >
									维护情况
								
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
									监测台建筑管理：
									
									<input type="checkbox"  name="selectoper" value="ah" >
									监测台建筑管理
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
									系统管理：
									
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
									
									审批流转：
									
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
									
									登录：
									
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
								
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
									代办事宜：
									
									<input type="checkbox"  name="selectoper" value="ca" >
									保存
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
									导出设置：
									
									<input type="checkbox"  name="selectoper" value="da" >
									导出设置设置
								
							
								
									<input type="checkbox"  name="selectoper" value="db" >
									导出设置保存
								
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
									数据字典：
									
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
									
									用户管理：
									
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
									
									角色管理：
									
									<input type="checkbox"  name="selectoper" value="ga" >
									编辑
								
							
								
									<input type="checkbox"  name="selectoper" value="gb" >
									保存
								
								
							
								
								
									<br/>
									
									
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
										&nbsp;&nbsp;&nbsp;
									
									申请流程管理：
									
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
									
									申请模板管理：
									
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
									
									申请模板管理：
									
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
  </table>
		    				    
	</Form>
	</body>
</HTML>

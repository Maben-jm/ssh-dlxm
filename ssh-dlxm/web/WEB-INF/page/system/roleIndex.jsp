<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<HTML>
	<HEAD>
		<title>角色权限管理</title>		
		<LINK href="${pageContext.request.contextPath }/css/Style.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="${pageContext.request.contextPath }/script/function.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/script/pub.js"></script>
		<script language="javascript">
		  
		 function saveRole(){
		 
           document.Form2.roleID.value=document.Form1.roleID.value;
		   document.Form2.action="elecRoleAction_save.do";
		   document.Form2.submit();
		}
		
       
       function selectRole(){
          if(document.Form1.roleID.value=="0"){
          
             document.Form1.action="elecRoleAction_home.do";
             document.Form1.submit();            
          }else{
            Pub.submitActionWithForm('Form2','elecRoleAction_edit.do','Form1');
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
 <s:form name="Form1" namespace="/system" id="Form1"  method="post" cssStyle="margin:0px;">
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
						<s:select list="#request.roleList"
							listKey="ddlCode" listValue="ddlName"
						    headerKey="0"  headerValue="请选择"
						  name="roleID" class="bg" style="width:180px"  onchange="selectRole()"
						></s:select>

					</td>
				</tr>
			    
			    <tr>
				   <td class="ta_01" align="right" colspan=2 align="right" width="100%"  height=10></td>
				</tr>
				
			</TBODY>
		  </table>
 </s:form>

<s:form  name="Form2" id="Form2"  method="post" style="margin:0px;">
 
<table cellSpacing="1" cellPadding="0" width="90%" align="center" bgColor="#f5fafe" border="0">
	<tr>
		<td>
			<fieldset style="width:100%; border : 1px solid #73C8F9;text-align:left;COLOR:#023726;FONT-SIZE: 12px;"><legend align="left">权限分配</legend>

				<table cellSpacing="0" cellPadding="0" width="90%" align="center" bgColor="#f5fafe" border="0">
				  <tr>
					 <td class="ta_01" colspan=2 align="left" width="100%" >
						 <br><br/>
						 <s:iterator value="#request.popedoms" id="column">
							 <s:iterator begin="%{key.length()}" end='%{#request.maxLength}' step="1">
								 &nbsp;&nbsp;
							 </s:iterator>
							 <s:property value="key"/>:
							 <s:iterator value="value" var="item">
								 <input type="checkbox"  name="selectoper" value="<s:property value="%{#item.code}"/>" >
								 <s:property value="%{#item.name}"/>
							 </s:iterator>
							 <br/>
						 </s:iterator>
					 </td>
					</tr>
					 <input type="hidden" name="roleID" >
			</table>

			</fieldset>
		</td>
	</tr>
</table>
		    				    
	</s:form>
	</body>
</HTML>

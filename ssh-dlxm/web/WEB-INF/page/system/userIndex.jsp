<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

 <script language="javascript"> 
	function returnMethod(userName){
		return confirm("你确定要删除  "+userName+"？");
	}
  </script>

<HTML>
	<HEAD>
		<title>用户管理</title>		
		<LINK href="${pageContext.request.contextPath }/css/Style.css" type="text/css" rel="stylesheet">
		<script language="javascript" src="${pageContext.request.contextPath }/script/function.js"></script>
	</HEAD>
		
	<body >
		<s:form id="Form1" name="Form1" namespace="/system" action="elecUserAction_home.do" method="post" style="margin:0px;">
			<table cellspacing="1" cellpadding="0" width="90%" align="center" bgcolor="#f5fafe" border="0">
				<TR height=10><td></td></TR>
				<tr>
					<td class="ta_01" colspan=2 align="center" background="../../../images/b-info.gif">
						<font face="宋体" size="2"><strong>用户信息管理</strong></font>
					</td>
					
				</tr>
				<tr>
					<td class="ta_01" align="center" bgcolor="#f5fafe" height="22">
					姓名：</td>
					<td class="ta_01" >
						<s:textfield name="userName" id="userName" size="21"></s:textfield>
						<font face="宋体" color="red"></font>
					</td>
				</tr>
		    </table>	
		</s:form>




		<form id="Form2" name="Form2" action="/system/userAction_main.do" method="post">
		<table cellSpacing="1" cellPadding="0" width="90%" align="center" bgColor="#f5fafe" border="0">
			<TBODY>
				<TR height=10><td></td></TR>			
				<tr>
				  	<td>
		                <TABLE style="WIDTH: 105px; HEIGHT: 20px" border="0">
										<TR>
											<TD align="center" background="${pageContext.request.contextPath }/images/cotNavGround.gif"><img src="${pageContext.request.contextPath }/images/yin.gif" width="15"></TD>
											<TD class="DropShadow" background="${pageContext.request.contextPath }/images/cotNavGround.gif">用户列表</TD>
										</TR>
			             </TABLE>
                   </td>
					<td class="ta_01" align="right">
					    <input style="font-size:12px; color:black; height:20px;width:80px" id="BT_find" type="button" value="查询" name="BT_find"  onclick="document.forms[0].submit()">&nbsp;&nbsp;
						<input style="font-size:12px; color:black; height:20px;width:80px" id="BT_Add" type="button" value="添加用户" name="BT_Add" onclick="openWindow('${pageContext.request.contextPath }/system/elecUserAction_add.do','700','400')">&nbsp;&nbsp;
						<input style="font-size:12px; color:black; height=20;width=80" id="BT_Add" type="button" value="人员统计" name="BT_Add"
							   onclick="openWindow('${pageContext.request.contextPath }/system/elecUserAction_chartUser.do','700','400')">&nbsp;&nbsp;
						<input style="font-size:12px; color:black; height=20;width=80"  type="button" value="人员统计(炫)" name="BT_Add"   onclick="openWindow('${pageContext.request.contextPath }/system/elecUserAction_chartUser.do?chart=1','700','400')">&nbsp;&nbsp;
					</td>
				</tr>
					
			<tr>
				<td class="ta_01" align="center" bgColor="#f5fafe" colspan="2">			
					
									
						<table cellspacing="0" cellpadding="1" rules="all" bordercolor="gray" border="1" id="DataGrid1"
							style="BORDER-RIGHT:gray 1px solid; BORDER-TOP:gray 1px solid; BORDER-LEFT:gray 1px solid; WIDTH:100%; WORD-BREAK:break-all; BORDER-BOTTOM:gray 1px solid; BORDER-COLLAPSE:collapse; BACKGROUND-COLOR:#f5fafe; WORD-WRAP:break-word">
							<tr style="FONT-WEIGHT:bold;FONT-SIZE:12pt;HEIGHT:25px;BACKGROUND-COLOR:#afd1f3">
							
								<td align="center" width="20%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">登录名</td>
								<td align="center" width="20%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">用户姓名</td>
								<td align="center" width="10%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">性别</td>
								<td align="center" width="20%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">联系电话</td>
								<td align="center" width="10%" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">是否在职</td>
								<td width="10%" align="center" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">编辑</td>
								<td width="10%" align="center" height=22 background="${pageContext.request.contextPath }/images/tablehead.jpg">删除</td>
							</tr>
							
							<s:if test="#request.list!=null && #request.list.size()>0">
								<s:iterator value="#request.list" var="item">
									<tr onmouseover="this.style.backgroundColor = 'white'" onmouseout="this.style.backgroundColor = '#F5FAFE';">

										<td style="HEIGHT:22px" align="center" width="20%">
											<s:property value="%{#item.logonName}"></s:property>
										</td>
										<td style="HEIGHT:22px" align="center" width="20%">
											<a href="#" onclick="openWindow('${pageContext.request.contextPath }/system/elecUserAction_edit.do?userID=<s:property value="%{#item.userID}"/>&viewflag=1','700','400');">
												<s:property value="%{#item.userName}"></s:property>
											</a>
										</td>
										<td style="HEIGHT:22px" align="center" width="10%">
											<s:property value="%{#item.sexID}"></s:property>
										</td>
										<td style="HEIGHT:22px" align="center" width="20%">
											<s:property value="%{#item.contactTel}"></s:property>
										</td>
										<td style="HEIGHT:22px" align="center" width="10%">
											<s:property value="%{#item.isDuty}"></s:property>
										</td>

										<td align="center" style="HEIGHT: 22px" align="center" width="10%">
											<a href="#" onclick="openWindow('${pageContext.request.contextPath }/system/elecUserAction_edit.do?userID=<s:property value="%{#item.userID}"></s:property>','700','400');">
												<img src="${pageContext.request.contextPath }/images/edit.gif" border="0" style="CURSOR:hand"></a>
										</td>

										<td align="center" style="HEIGHT: 22px" align="center" width="10%">
											<a href="${pageContext.request.contextPath }/system/elecUserAction_delete.do?userID=<s:property value="%{#item.userID}"></s:property>" onclick="return returnMethod('<s:property value="%{#item.userName}"></s:property>')">
												<img src="${pageContext.request.contextPath }/images/delete.gif" width="16" height="16" border="0" style="CURSOR:hand"></a>
										</td>
									</tr>
								</s:iterator>
							</s:if>
						</table>
					</td>
				</tr>        
			</TBODY>
		</table>
		</form>

	</body>
</HTML>

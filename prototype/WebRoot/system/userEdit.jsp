

<%@ page language="java" pageEncoding="UTF-8"%>

<html>
  <head>
   <title>编辑用户</title>
   <LINK href="${pageContext.request.contextPath }/css/Style.css" type="text/css" rel="stylesheet">
   <script language="javascript" src="${pageContext.request.contextPath }/script/function.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/script/validate.js"></script>
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/My97DatePicker/WdatePicker.js"></script>
   <Script language="javascript">
    
	function check_null(){
	
		var theForm=document.Form1;
	    
	  
	    if(Trim(theForm.userName.value)=="")
		{
			alert("用户姓名不能为空");
			theForm.userName.focus();
			return false;
		}
		if(theForm.sexID.value=="")
		{
			alert("请选择性别");
			theForm.sexID.focus();
			return false;
		}
	    if(theForm.jctID.value=="")
		{
			alert("请选择所属单位");
			theForm.jctID.focus();
			return false;
		}
	
        if(theForm.logonPwd.value!=theForm.passwordconfirm.value){
		
		  alert("两次输入密码不一致，请重新输入");
		  return;
		}
		if(checkNull(theForm.contactTel)){
         if(!checkPhone(theForm.contactTel.value))
		  {
			alert("请输入正确的电话号码");
			theForm.contactTel.focus();
			return false;
		  }
		}
		
	    if(checkNull(theForm.mobile)){
         if(!checkMobilPhone(theForm.mobile.value))
		  {
			alert("请输入正确的手机号码");
			theForm.mobile.focus();
			return false;
		  }
		}
		
	   if(checkNull(theForm.email))	{
         if(!checkEmail(theForm.email.value))
		 {
			alert("请输入正确的EMail");
			theForm.email.focus();
			return false;
		 }
	   }
		
	   if(theForm.remark.value.length>250){
     
        	alert("备注字符长度不能超过250");
			theForm.remark.focus();
			return false; 
        }
		 
		 
	   document.Form1.action="editUser.do";
	   document.Form1.submit();
	  	
	}
	
</script>
</head>

  
 <body>
    <form name="Form1" method="post">	
    <br>
    
    <table cellSpacing="1" cellPadding="5" width="90%" align="center" bgColor="#eeeeee" style="border:1px solid #8ba7e3" border="0">

	 <tr>
		<td class="ta_01" align="center" colSpan="4" background="${pageContext.request.contextPath }/images/b-info.gif">
		 <font face="宋体" size="2"><strong>编辑用户</strong></font>
		</td>
    </tr>
       <input name="userID"  type="hidden" value="ff808081110677790111070ccffe0001">
     <tr>
         <td align="center" bgColor="#f5fafe" class="ta_01">登&nbsp;&nbsp;录&nbsp;&nbsp;名：
         <td class="ta_01" bgColor="#ffffff">
         	<input name="logonName" type="text" maxlength="25" id="logonName"  value="sunhy"  size=20 readonly="true">
         <font color="#FF0000">*</font></td>
         <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">用户姓名：
		 <td class="ta_01" bgColor="#ffffff">
		 	<input name="userName" type="text"  value="孙鸿洋" maxlength="25" id="userName"  size=20>
		 	
         <font color="#FF0000">*</font></td>
    </tr>
	<tr>
		<td align="center" bgColor="#f5fafe" class="ta_01">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
		<td class="ta_01" bgColor="#ffffff">
			<select name="sexID" style="width:155px">
			<option value=""></option>
			<option value="1" selected>男</option>
			<option value="2">女</option>
			</select>
			<font color="#FF0000">*</font>
		</td>
		<td align="center" bgColor="#f5fafe" class="ta_01">所属单位：</td>
		<td class="ta_01" bgColor="#ffffff">
			<select name="jctID" style="width:155px">
			<option value=""></option>
			
			<option value="1">北京</option>
			
			<option value="2" selected>深圳</option>
			
			<option value="3">厦门</option>
			
			<option value="4">上海</option>
			
			<option value="5">广州</option>
			
			</select> 
			<font color="#FF0000">*</font>
		</td>
	</tr>
	<tr>
		<td align="center" bgColor="#f5fafe" class="ta_01">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
		<td class="ta_01" bgColor="#ffffff">
			<input name="logonPwd" type="password" value="sunhy" maxlength="25"  size=22>
		</td>
		<td align="center" bgColor="#f5fafe" class="ta_01">确认密码：</td>
		<td class="ta_01" bgColor="#ffffff">
			<input name="passwordconfirm" type="password" value="sunhy" maxlength="25" size=22>
		</td>
	</tr>

	<tr>
		<td align="center" bgColor="#f5fafe" class="ta_01">出生日期：</td>
		<td class="ta_01" bgColor="#ffffff">
			<input name="birthday" id="birthday" type="text" maxlength="50"  size=20 value="" onClick="WdatePicker()">
		</td>
		<td align="center" bgColor="#f5fafe" class="ta_01">联系地址：</td>
		<td class="ta_01" bgColor="#ffffff">
			<input name="address" type="text" maxlength="50"  size=20 value="">
		</td>
	</tr>

	<tr>
		<td align="center" bgColor="#f5fafe" class="ta_01">联系电话：</td>
		<td class="ta_01" bgColor="#ffffff">
			<input name="contactTel" type="text" maxlength="25" size=20 value="">
		</td>
		<td align="center" bgColor="#f5fafe" class="ta_01">手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：</td>
		<td class="ta_01" bgColor="#ffffff">
			<input name="mobile" type="text" maxlength="25"  size=20 value="">
		</td>
	</tr>

	<tr>
		<td align="center" bgColor="#f5fafe" class="ta_01">电子邮箱：</td>
		<td class="ta_01" bgColor="#ffffff">
			<input name="email" type="text" maxlength="50"  size=20 value="">
		</td>
		<td align="center" bgColor="#f5fafe" class="ta_01">是否在职：</td>
		<td class="ta_01" bgColor="#ffffff">
			<select name="isDuty"  style="width:155px">
				<option value="1" selected>是</option>
				<option value="2">否</option>
			</select>
		</td>
	</tr>
	
	<tr>
		<td align="center" bgColor="#f5fafe" class="ta_01">入职日期：</td>
		<td class="ta_01" bgColor="#ffffff">
			<input name="onDutyDate" id="onDutyDate" type="text" maxlength="50" size=20 value="" onClick="WdatePicker()">
		</td>
		<td align="center" bgColor="#f5fafe" class="ta_01">离职日期：</td>
		<td class="ta_01" bgColor="#ffffff">
			<input name="offDutyDate" id="offDutyDate" type="text" maxlength="50" size=20 value="" onClick="WdatePicker()">
		</td>
	</tr>

	<TR>
		<TD class="ta_01" align="center" bgColor="#f5fafe">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</TD>
		<TD class="ta_01" bgColor="#ffffff" colSpan="3">
			<textarea name="remark"  style="WIDTH:92%;"  rows="4" cols="52">系统管理员</textarea>
		</TD>
		</TR>
		<TR>
		<td  align="center"  colSpan="4"  class="sep1"></td>
	</TR>
	<tr>
		<td class="ta_01" style="WIDTH: 100%" align="center" bgColor="#f5fafe" colSpan="4">
			<input type="button" name="BT_Submit" value="保存"  style="font-size:12px; color:black; height=22;width=55"  onClick="check_null()">
		    <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
		    <input style="font-size:12px; color:black; height=22;width=55" type="button" value="关闭"  name="Reset1"  onClick="window.close()">
	    </td>
	</tr>
</table>　
</form>

</body>
</html>

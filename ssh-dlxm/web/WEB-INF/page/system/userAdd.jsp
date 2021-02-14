<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<html>
  <head>
   <title>添加用户</title>
   <LINK href="${pageContext.request.contextPath }/css/Style.css" type="text/css" rel="stylesheet">
   <script language="javascript" src="${pageContext.request.contextPath }/script/function.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath}/My97DatePicker/WdatePicker.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath }/script/validate.js"></script>
   <script type="text/javascript" src="${pageContext.request.contextPath }/script/jquery-1.4.2.js"></script>
   
<Script language="javascript">

    $(document).ready(function(){
			//使用class属性处理  'yy-mm-dd' 设置格式"yyyy/mm/dd"
			$('#birthday').datepick({dateFormat: 'yy-mm-dd'}); 
			$('#onDutyDate').datepick({dateFormat: 'yy-mm-dd'});		
	});

	function check_null(){
	    
	     var theForm=document.Form1;
	    
	    if(Trim(theForm.logonName.value)=="")
		{
			alert("登录名不能为空");
			theForm.logonName.focus();
			return false;
		}
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
		 document.Form1.action="elecUserAction_save.do";
		 document.Form1.submit();
	}
	function checkUser(object){
		$.ajax({
			type:"POST",//post请求
			async:true,//ajax调用服务器以异步来处理啊
			cache:false,//设置不从缓存中读取数据，这样保证读取的数据为最新的数据
			data:"logonName="+object.value,//传递给服务器的数据
			url:"elecUserAction_checkUser.do",//访问服务器的url连接
			success:function(data){//服务器响应的结果
				if(data==1){//说明登录名在数据库表中已经存在
					$("#check").html("<font color='red'>登录名已经存在</font>");
					object.focus();
				}
				else{//说明登录名在数据库表中不存在
					$("#check").html("<font color='green'>登录名不存在，可以继续操作</font>");
				}
			}
		});
	}
   </script>
  </head>
  
 <body>
 
<s:form namespace="system" name="Form1" method="post">
 <br>
    <table cellSpacing="1" cellPadding="5" width="580" align="center" bgColor="#eeeeee" style="border:1px solid #8ba7e3" border="0">

    <tr>
		<td class="ta_01" align="center" colSpan="4" background="${pageContext.request.contextPath }/images/b-info.gif">
		 <font face="宋体" size="2"><strong>添加用户</strong></font>
		</td>
    </tr>
     <tr>
         <td align="center" bgColor="#f5fafe" class="ta_01">登&nbsp;&nbsp;录&nbsp;&nbsp;名：<font color="#FF0000">*</font></td>
         <td class="ta_01" bgColor="#ffffff">
			 <s:textfield name="logonName" maxlength="25" id="logonName" size="20" onblur="checkUser(this)"></s:textfield>
             <div id="check"></div>
         </td>
         <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">用户姓名：<font color="#FF0000">*</font></td>
         <td class="ta_01" bgColor="#ffffff">
			 <s:textfield name="userName" maxlength="25" id="userName" size="20"></s:textfield>
         </td>
    </tr>
	<tr>
		<td align="center" bgColor="#f5fafe" class="ta_01">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：<font color="#FF0000">*</font></td>
		<td class="ta_01" bgColor="#ffffff">
			<s:select list="#request.sexList" name="sexID" cssStyle="width:155px"
				listKey="ddlCode" listValue="ddlName"
			  	value="1"
			></s:select>
		</td>
		<td align="center" bgColor="#f5fafe" class="ta_01">所属单位：<font color="#FF0000">*</font></td>
		<td class="ta_01" bgColor="#ffffff">
			<s:select list="#request.jctList" name="jctID" cssStyle="width:155px"
					  listKey="ddlCode" listValue="ddlName"
					  headerKey="" headerValue=""
			></s:select>
		</td>
	</tr>
	<tr>
		<td align="center" bgColor="#f5fafe" class="ta_01">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
		<td class="ta_01" bgColor="#ffffff">
			<s:password name="logonPwd"  maxlength="25"  size='22'></s:password>
		</td>
		<td align="center" bgColor="#f5fafe" class="ta_01">确认密码：</td>
		<td class="ta_01" bgColor="#ffffff">
			<s:password  name="passwordconfirm"  maxlength="25"  size='22'></s:password>
		</td>
	</tr>

	<tr>
		<td align="center" bgColor="#f5fafe" class="ta_01">出生日期：</td>
		<td class="ta_01" bgColor="#ffffff">
			<s:textfield name="birthday" id="birthday" maxlength="50"  size="20" onclick="WdatePicker()"></s:textfield>
		</td>
		<td align="center" bgColor="#f5fafe" class="ta_01">联系地址：</td>
		<td class="ta_01" bgColor="#ffffff">
			<s:textfield name="address" maxlength="50"  size="20"></s:textfield>
		</td>
	</tr>

	<tr>
		<td align="center" bgColor="#f5fafe" class="ta_01">联系电话：</td>
		<td class="ta_01" bgColor="#ffffff">
			<s:textfield name="contactTel" maxlength="25"  size="20"></s:textfield>
		</td>
		<td align="center" bgColor="#f5fafe" class="ta_01">手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：</td>
		<td class="ta_01" bgColor="#ffffff">
			<s:textfield name="mobile"  maxlength="25"  size="20"></s:textfield>
		</td>
	</tr>

	<tr>
		<td align="center" bgColor="#f5fafe" class="ta_01">电子邮箱：</td>
		<td class="ta_01" bgColor="#ffffff">
			<s:textfield name="email" maxlength="50"  size="20"></s:textfield>
		</td>
		<td align="center" bgColor="#f5fafe" class="ta_01">是否在职：</td>
		<td class="ta_01" bgColor="#ffffff">
			<s:select list="#request.isDutyList" name="isDuty" cssStyle="width:155px"
				listKey="ddlCode" listValue="ddlName"
					  value="1"
			></s:select>
		</td>
	</tr>

	<tr>
		<td align="center" bgColor="#f5fafe" class="ta_01">入职日期：</td>
		<td class="ta_01" bgColor="#ffffff">
			<s:textfield name="onDutyDate" id="onDutyDate" maxlength="50" size="20" onClick="WdatePicker()"></s:textfield>
		</td>
		<td align="center" bgColor="#ffffff" class="ta_01"></td>
		<td class="ta_01" bgColor="#ffffff">
		</td>
	</tr>

	<TR>
		<TD class="ta_01" align="center" bgColor="#f5fafe">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</TD>
		<TD class="ta_01" bgColor="#ffffff" colSpan="3">
			<s:textarea name="remark"  cssStyle="WIDTH:95%"  rows="4" cols="52"></s:textarea>
		</TD>
	</TR>
	<TR>
	<td  align="center"  colSpan="4"  class="sep1"></td>
	</TR>
	<tr>
		<td class="ta_01" style="WIDTH: 100%" align="center" bgColor="#f5fafe" colSpan="4">
		<input type="button" name="BT_Submit" value="保存"  style="font-size:12px; color:black; height:22px;width:55px"   onClick="check_null()">
		 <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
		<input style="font-size:12px; color:black; height:22px;width:55px"  type="button" value="关闭"  name="Reset1"  onClick="window.close()">
			
		</td>
	</tr>
</table>　
</s:form>

</body>
</html>

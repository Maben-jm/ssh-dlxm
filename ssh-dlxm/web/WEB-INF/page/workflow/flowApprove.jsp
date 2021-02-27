<%@ page language="java" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
	<title>审批处理</title>
	<link href="${pageContext.request.contextPath }/css/Style.css" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="${pageContext.request.contextPath }/script/function.js"></script>
	<script type="text/javascript">
		function saveInfo(flag){
			 document.getElementById("approval").value = flag;
			 document.Form1.submit();	 		 
		}
	</script>
</head>
<body>
		<s:form name="Form1" namespace="workflow" action="elecApplicationFlowAction_approve.do" method="post">
			<s:hidden name="applicationID"></s:hidden>
			<s:hidden name="taskId"></s:hidden>
			<s:hidden name="approval" value="true" id="approval"></s:hidden>
			<br>
			<table border="0" width="90%" cellspacing="1" cellpadding="0" align="center" bgcolor="#f5fafe">
				<tr>
					<td class="ta_01" align="center"
						background="${pageContext.request.contextPath }/images/b-info.gif"
						colspan="4">
						<font face="宋体" size="2"><strong>审批处理</strong>
						</font>
					</td>
				</tr>
				<tr>
					<td class="ta_01" align="left" bgColor="#ffffff" colspan="4">
						<font face="宋体" size="2">
							说明：<br />
								1，同意：本次审批通过，流程继续执行。如果所有的环节都通过，则表单的最终状态为：已通过。<br />
								2，不同意：本次审批未通过，流程结束，不再继续执行。表单的最终状态为：未通过。<br />
						</font>
					</td>
				</tr>
				<tr height=10>
					<td colspan=4></td>
				</tr>
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01" width="20%">下载申请文件</td>
			        <td class="ta_01" bgColor="#ffffff" colspan="3">
			        	<a id="downloadApplication" href="${pageContext.request.contextPath }/workflow/elecApplicationFlowAction_download.do?applicationID=${applicationID }" style="text-decoration: underline">[点击下载申请文件]</a>
			        </td>
				</tr>
					<tr>
						<td align="center" bgColor="#f5fafe" class="ta_01" width="20%">请选择下一步：<font color="#FF0000">*</font></td>
				        <td class="ta_01" bgColor="#ffffff" colspan="3">
							<s:select list="#request.outcome" name="outcome" id="outcome">
							</s:select>
				        </td>
					</tr>
				<tr>
					<td align="center" bgColor="#f5fafe" class="ta_01" width="20%">审批意见：<font color="#FF0000">*</font></td>
			        <td class="ta_01" bgColor="#ffffff" colspan="3">
						<s:textarea name="comment" cols="52" rows="4" id="comment" cssStyle="WIDTH:95%"></s:textarea>
			        </td>
				</tr>
				<tr height=2>
					<td colspan=4
						background="${pageContext.request.contextPath }/images/b-info.gif"></td>
				</tr>
				<tr height=10>
					<td colspan=4></td>
				</tr>
				<tr>
					<td align="center" colspan=4>
						<input type="button" name="BT_Submit" value="同意"  style="font-size:12px; color:black; height=22;width=55"  onClick="saveInfo(true)">
						<input type="button" name="BT_Submit" value="不同意"  style="font-size:12px; color:black; height=22;width=55"  onClick="saveInfo(false)">
						<INPUT type="button" name="Reset1" id="save" value="返回"
							onClick="javascript:history.go(-1);"
							style="width: 60px; font-size: 12px; color: black;">
					</td>
				</tr>
			</table>
		</s:form>

</body>
</html>
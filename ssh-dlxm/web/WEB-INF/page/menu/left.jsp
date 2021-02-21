<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/RoleTagLib.tld" prefix="u" %>
<HTML>
	<HEAD>
		<TITLE>Left</TITLE>
		<STYLE type="text/css">BODY {
				MARGIN: 0px; BACKGROUND-COLOR: #8ba7e3
			}
			BODY {
				COLOR: #000000
			}
			TD {
				COLOR: #000000
			}
			TH {
				COLOR: #000000
			}
			.child {display:none}
		</STYLE>
		<LINK href="${pageContext.request.contextPath }/css/Style.css" type="text/css" rel="stylesheet">
		<SCRIPT language="JavaScript">
		a="";

		function getIndex(el) {
			ind = null;
			for (i=0; i<document.layers.length; i++) {
				whichEl = document.layers[i];
				if (whichEl.id == el) {
					ind = i;
					break;
				}
			}
			return ind;
		}
		function arrange() {
			nextY = document.layers[firstInd].pageY +document.layers[firstInd].document.height;
			for (i=firstInd+1; i<document.layers.length; i++) {
				whichEl = document.layers[i];
				if (whichEl.visibility != "hide") {
					whichEl.pageY = nextY;
					nextY += whichEl.document.height;
				}
			}
		}

		function initIt(){
			divColl = document.getElementsByTagName("DIV");
			for (i=0; i<divColl.length; i++) {
				whichEl = divColl[i];
				if (whichEl.className == "child"){
				   whichEl.style.display = "none";
				}
			}
		}
		function expand(bb)
		{

		if(a!="")
		{
		expandIt(a)
		}

		expandIt(bb)

//		a=bb;

		}

		function expandIt(el) {

			whichEl = eval(el + "Child");
			whichimg = eval("img" + el)
			if (whichEl.style.display == "none") {
				whichEl.style.display = "block";
				whichimg.src="${pageContext.request.contextPath }/images/open.gif";

			}
			else {
				whichEl.style.display = "none";
				whichimg.src="${pageContext.request.contextPath }/images/add.gif";
			}
		}


		function linkcolorchange(objLink)
		{
			for(var i=0;i<document.links.length;i++)
			{
				document.links[i].style.color = "" ;
			}
				objLink.style.color = "red" ;
		}
		function backgroundColorChange(objLink,strColor)
		{
			objLink.style.backgroundColor = strColor ;
		}

		onload = initIt;
		function returnMethod(){
			return false;
		}
		</SCRIPT>
	</HEAD>
	<BODY scroll="no" MS_POSITIONING="GridLayout" scroll="auto" class="bodyscroll">
		<TABLE height="100%" cellSpacing="0" cellPadding="0" width="143" border="0">
			<TBODY>
				<TR>
					<TD vAlign="top" bgColor="#F6F6F6" height="100%">


						<u:if pattern="aa,ab,ac">
						<DIV class="parent" id="KB0Parent">
							<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
								<TBODY>
									<TR height=25 >
										<TD align="left" background="${pageContext.request.contextPath }/images/b-info.gif"  vAlign="middle">
											&nbsp;<img src="${pageContext.request.contextPath }/images/add.gif" name="imgKB0" width="9" height="9" alt="" border="0" />
											&nbsp; <A class="cl" onclick="expand('KB0'); returnMethod()" href="#">技术设施维护管理</A>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</DIV>
						</u:if>
						<DIV class="child" id="KB0Child">
							<TABLE cellSpacing="0" cellPadding="0" width="99%" border="0">
								<TBODY>
								    <u:if pattern="aa">
									<TR>
										<TD class="box05" onmouseover="backgroundColorChange(this,'white');" onmouseout="backgroundColorChange(this,'');">
											<A class="cl_01" onclick="linkcolorchange(this)" href="${pageContext.request.contextPath }/equapment/equapmentIndex.jsp" target="mainFrame">仪器设备管理</A>
										</TD>
									</TR>
									</u:if>
									<u:if pattern="ab">
									<TR>
										<TD class="box05" onmouseover="backgroundColorChange(this,'white');" onmouseout="backgroundColorChange(this,'');">
											<A class="cl_01" onclick="linkcolorchange(this)" href="${pageContext.request.contextPath }/equapment/adjustIndex.jsp" target="mainFrame">设备校准检修</A>
										</TD>
									</TR>
									</u:if>
									<u:if pattern="ac">
									<TR>
										<TD class="box05" onmouseover="backgroundColorChange(this,'white');" onmouseout="backgroundColorChange(this,'');">
											<A class="cl_01" onclick="linkcolorchange(this)" href="${pageContext.request.contextPath }/equapment/planIndex.jsp" target="mainFrame">设备购置计划</A>
										</TD>
									</TR>
									</u:if>
									
								</TBODY>
							</TABLE>
						</DIV>
                       

                        <u:if pattern="ad">
						<DIV class="parent" id="KB1Parent">
							<TABLE cellSpacing="0" cellPadding="0" width="99%" border="0">
								<TBODY>
									<TR>
									<TR height=25>
										<TD background="${pageContext.request.contextPath }/images/b-info.gif" align="left" vAlign="middle">
											&nbsp;<img src="${pageContext.request.contextPath }/images/add.gif" name="imgKB1" width="9" height="9" alt="" border="0" />
											&nbsp; <A class="cl" onclick="expand('KB1'); returnMethod()" href="#">技术资料图纸管理</A>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</DIV>
						<DIV class="child" id="KB1Child">
							<TABLE cellSpacing="0" cellPadding="0" width="99%" border="0">
								<TBODY>
									<TR>
										<TD class="box05" onmouseover="backgroundColorChange(this,'white');" onmouseout="backgroundColorChange(this,'');">
											<A class="cl_01" onclick="linkcolorchange(this)" href="${pageContext.request.contextPath }/dataChart/dataChartIndex.jsp" target="mainFrame">资料图纸管理</A>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</DIV>
                      	</u:if>
                      
                        <u:if pattern="ae,af,ag">
						<DIV class="parent" id="KB2Parent">
							<TABLE cellSpacing="0" cellPadding="0" width="99%" border="0">
								<TBODY>
									<TR>
									<TR height=25>
										<TD background="${pageContext.request.contextPath }/images/b-info.gif" align="left" vAlign="middle">
											&nbsp;<img src="${pageContext.request.contextPath }/images/add.gif" name="imgKB2" width="9" height="9" alt="" border="0" />
											&nbsp; <A class="cl" onclick="expand('KB2'); returnMethod()" href="#">站点设备运行管理</A>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</DIV>
						</u:if>
						<DIV class="child" id="KB2Child">
							<TABLE cellSpacing="0" cellPadding="0" width="99%" border="0">
								<TBODY>
								    <u:if pattern="ae">
									<TR>
										<TD class="box05" onmouseover="backgroundColorChange(this,'white');" onmouseout="backgroundColorChange(this,'');">
											<A class="cl_01" onclick="linkcolorchange(this)" href="${pageContext.request.contextPath }/siteEquapment/siteInfoIndex.jsp" target="mainFrame">站点基本信息</A>
										</TD>
									</TR>
									</u:if>
									<u:if pattern="af">
									<TR>
										<TD class="box05" onmouseover="backgroundColorChange(this,'white');" onmouseout="backgroundColorChange(this,'');">
											<A class="cl_01" onclick="linkcolorchange(this)" href="${pageContext.request.contextPath }/siteEquapment/siteRunIndex.jsp" target="mainFrame">运行情况</A>
										</TD>
									</TR>
									</u:if>
									<u:if pattern="ag">
									<TR>
										<TD class="box05" onmouseover="backgroundColorChange(this,'white');" onmouseout="backgroundColorChange(this,'');">
											<A class="cl_01" onclick="linkcolorchange(this)" href="${pageContext.request.contextPath }/siteEquapment/siteMaintainIndex.jsp" target="mainFrame">维护情况</A>
										</TD>
									</TR>
								    </u:if>
								</TBODY>
							</TABLE>
						</DIV>
                       


                       <u:if pattern="ah">
						<DIV class="parent" id="KB3Parent">
							<TABLE cellSpacing="0" cellPadding="0" width="99%" border="0">
								<TBODY>
									<TR>
									<TR height=25>
										<TD background="${pageContext.request.contextPath }/images/b-info.gif" align="left" vAlign="middle">
											&nbsp;<img src="${pageContext.request.contextPath }/images/add.gif" name="imgKB3" width="9" height="9" alt="" border="0" />
											&nbsp; <A class="cl" onclick="expand('KB3'); returnMethod()" href="#">监测台建筑管理</A>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</DIV>
						<DIV class="child" id="KB3Child">
							<TABLE cellSpacing="0" cellPadding="0" width="99%" border="0">
								<TBODY>
									<TR>
										<TD class="box05" onmouseover="backgroundColorChange(this,'white');" onmouseout="backgroundColorChange(this,'');">
											<A class="cl_01" onclick="linkcolorchange(this)" href="${pageContext.request.contextPath }/building/buildingIndex.jsp" target="mainFrame">监测台建筑管理</A>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</DIV>
                        </u:if>
 
                        <u:if pattern="ai,aj,ak,al">
						<DIV class="parent" id="KB4Parent">
							<TABLE cellSpacing="0" cellPadding="0" width="99%" border="0">
								<TBODY>
									<TR>
									<TR height=25>
										<TD background="${pageContext.request.contextPath }/images/b-info.gif" align="left" vAlign="middle">
											&nbsp;<img src="${pageContext.request.contextPath }/images/add.gif" name="imgKB4" width="9" height="9" alt="" border="0" />
											&nbsp; <A class="cl" onclick="expand('KB4'); returnMethod()" href="#">系统管理</A>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</DIV>
						</u:if>
						<DIV class="child" id="KB4Child">
							<TABLE cellSpacing="0" cellPadding="0" width="99%" border="0">
								<TBODY>
								
								    <u:if pattern="ai">
									<TR>
										<TD class="box05" onmouseover="backgroundColorChange(this,'white');" onmouseout="backgroundColorChange(this,'');">
											<A class="cl_01" onclick="linkcolorchange(this)" href="${url }" target="mainFrame">用户管理</A>
										</TD>
									</TR>
									</u:if>
									<u:if pattern="aj">
									
									<TR>
										<TD class="box05" onmouseover="backgroundColorChange(this,'white');" onmouseout="backgroundColorChange(this,'');">
											<A class="cl_01" onclick="linkcolorchange(this)" href="${pageContext.request.contextPath }/system/elecRoleAction_home.do" target="mainFrame">角色管理</A>
										</TD>
									</TR>
									</u:if>
									<u:if pattern="ak">
									
									<TR>
										<TD class="box05" onmouseover="backgroundColorChange(this,'white');" onmouseout="backgroundColorChange(this,'');">
											<A class="cl_01" onclick="linkcolorchange(this)" href="${pageContext.request.contextPath }/system/elecCommonMsgAction_home.do" target="mainFrame">待办事宜</A>
										</TD>
									</TR>
									</u:if>
									
									<u:if pattern="al">
									<TR>
										<TD class="box05" onmouseover="backgroundColorChange(this,'white');" onmouseout="backgroundColorChange(this,'');">
											<A class="cl_01" onclick="linkcolorchange(this)" href="${pageContext.request.contextPath }/system/elecSystemDDLAction_home.do" target="mainFrame">数据字典维护</A>
										</TD>
									</TR>
									</u:if>
									
								</TBODY>
							</TABLE>
						</DIV>
						<u:if pattern="am,an,ao,ap,aq">
					    <DIV class="parent" id="KB5Parent">
							<TABLE cellSpacing="0" cellPadding="0" width="99%" border="0">
								<TBODY>
									<TR>
									<TR height=25>
										<TD background="${pageContext.request.contextPath }/images/b-info.gif" align="left" vAlign="middle">
											&nbsp;<img src="${pageContext.request.contextPath }/images/add.gif" name="imgKB5" width="9" height="9" alt="" border="0" />
											&nbsp; <A class="cl" onclick="expand('KB5'); returnMethod()" href="#">审批流转</A>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</DIV>
						</u:if>
					    <DIV class="child" id="KB5Child">
							<TABLE cellSpacing="0" cellPadding="0" width="99%" border="0">
								<TBODY>
									<u:if pattern="am">
									<TR>
										<TD class="box05" onmouseover="backgroundColorChange(this,'white');" onmouseout="backgroundColorChange(this,'');">
											<A class="cl_01" onclick="linkcolorchange(this)" href="${pageContext.request.contextPath }/workflow/elecProcessDefinitionAction_home.do" target="mainFrame">
										审批流程管理</A>
										</TD>
									</TR>
									</u:if>
									<u:if pattern="an">
									<TR>
										<TD class="box05" onmouseover="backgroundColorChange(this,'white');" onmouseout="backgroundColorChange(this,'');">
											<A class="cl_01" onclick="linkcolorchange(this)" href="${pageContext.request.contextPath }/workflow/applicationTemplateList.jsp" target="mainFrame">申请模板管理</A>
										</TD>
									</TR>
									</u:if>
									<u:if pattern="ao">
									<TR>
										<TD class="box05" onmouseover="backgroundColorChange(this,'white');" onmouseout="backgroundColorChange(this,'');">
											<A class="cl_01" onclick="linkcolorchange(this)" href="${pageContext.request.contextPath }/workflow/flowTemplateList.jsp" target="mainFrame">起草申请</A>
										</TD>
									</TR>
									</u:if>
									<u:if pattern="ap">
									<TR>
										<TD class="box05" onmouseover="backgroundColorChange(this,'white');" onmouseout="backgroundColorChange(this,'');">
											<A class="cl_01" onclick="linkcolorchange(this)" href="${pageContext.request.contextPath }/workflow/flowMyTaskList.jsp" target="mainFrame">待我审批</A>
										</TD>
									</TR>
									</u:if>
									<u:if pattern="aq">
									<TR>
										<TD class="box06" onmouseover="backgroundColorChange(this,'white');" onmouseout="backgroundColorChange(this,'');">
											<A class="cl_01" onclick="linkcolorchange(this)" href="${pageContext.request.contextPath }/workflow/flowMyApplicationList.jsp" target="mainFrame">我的申请查询</A>
										</TD>
									</TR>
									</u:if>
								</TBODY>
							</TABLE>
						</DIV>

	</BODY>
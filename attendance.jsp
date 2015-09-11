<%@page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jsf_core"%>
<%@taglib prefix="emis" uri="emis"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
		    + request.getServerName() + ":" + request.getServerPort()
		    + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>人力资源管理系统-培训管理</title>
		<meta name="pragma" content="no-cache">
		<meta name="cache-control" content="no-cache">

		<meta name="Content-Type" content="text/html;charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<base href="<%=basePath%>">
	</head>

	<body>
		<%@include file="inc/top.jsp"%>

		<table>
			<%@include file="inc/menu.jsp"%>

			<td class="main">
				<table class="header">
					<tr>
						<td>
							当前位置：个人管理&gt;&gt;考勤管理
						</td>
					</tr>
				</table>
				<p>
					&nbsp;
				</p>
				<p>
					&nbsp;
				</p>

				<CENTER>
					<div>
						<strong><font color="#990000">考勤信息</font> </strong>
					</div>
					<%
					    int count = 0;
					%>
					<TABLE table width="80%" border="1" cellpadding="0" cellspacing="0"
						bgcolor="#EAE2F3" bordercolorlight="#A545A3"
						bordercolordark="#FFFFFF">
						<TR class="tableheader">
							<td>
								编号
							</td>
							<TD>
								姓名
							</TD>
							<TD>
								时间
							</TD>
							<td>
								签到
							</td>
							<td>
								签离
							</td>
							<td>
								出勤情况
							</td>
						</TR>

						<c:forEach items="${requestScope.list}" var="hash">
							<TR valign="top">
								<td><%=++count%></td>
								<TD>
									${hash.name}
								</TD>
								<TD>
									${hash.dutyday}
								</TD>
								<TD>
									${hash.ischeck}
								</TD>
								<TD>
									${hash.isleave}
								</TD>
								<TD>
									正常出勤
								</TD>
							</TR>
						</c:forEach>
					</TABLE>
			</td>
			</tr>
		</table>
	</body>
</html>


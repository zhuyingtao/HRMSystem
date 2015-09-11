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
							当前位置：企业管理&gt;&gt;培训管理
						</td>
						<TD align="right">
							<A HREF="train.do?method=add">新增培训公告</A>
						</TD>
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
						<strong><font color="#990000">培训信息</font> </strong>
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
								培训标题
							</TD>
							<TD>
								培训开始时间
							</TD>
							<td>
								培训结束时间
							</td>
							<td>
								培训部门
							</td>
							<td>
								培训发布人
							</td>
							<TD>
								培训人数
							</TD>
							<TD>
								操作
							</TD>
						</TR>

						<c:forEach items="${requestScope.list}" var="hash">
							<TR valign="top">
								<td><%=++count%></td>
								<TD>
									${hash.title}
								</TD>
								<TD>
									${hash.stime}
								</TD>
								<TD>
									${hash.etime}
								</TD>
								<TD>
									${hash.dept_name}
								</TD>
								<TD>
									${hash.realeaser}
								</TD>
								<TD>
									${hash.member}
								</TD>
								<TD>
									<a href="train.do?method=info&id=${hash.id}">查看详细信息</a>
									<a href="train.do?method=edit&id=${hash.id}">修改</a>
									<a href="train.do?method=delete&id=${hash.id}">删除</a>
								</TD>
							</TR>
						</c:forEach>
					</TABLE>
			</td>
			</tr>
		</table>
	</body>
</html>


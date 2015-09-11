<%@page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jsf_core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
		    + request.getServerName() + ":" + request.getServerPort()
		    + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>人力资源管理系统-薪资设定</title>
		<meta name="pragma" content="no-cache">
		<meta name="cache-control" content="no-cache">
		<meta name="Content-Type" content="text/html;charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<base href="<%=basePath%>">

		<style type="text/css">
.input {
	height: 100%;
	width: 100%;
	font-family: 微软雅黑;
	font-size: 12pt;
}
</style>
	</head>

	<body>
		<%@include file="inc/top.jsp"%>

		<table>
			<%@include file="inc/menu.jsp"%>

			<td class="main">
				<table class="header">
					<tr>
						<td>
							当前位置：薪资管理&gt;&gt;薪资设定
						</td>
						<td align="right">
							<a href="payment.do?act=jobsalary">返回上一页</a>
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
					<FORM METHOD=POST ACTION="payment.do?act=updatesalary" name="form1"">
						<table>
							<tr>
								<td width="400px">
									<div align="center">
										<strong><font color="#990000">基本工资设定</font> </strong>
									</div>
									<TABLE table width="100%" border="1" cellpadding="0"
										cellspacing="0" bgcolor="#EAE2F3" bordercolorlight="#A545A3"
										bordercolordark="#FFFFFF">
										<TR class="tableheader">
											<TD>
												部门名称
											</TD>
											<TD>
												职称
											</TD>
											<TD>
												工资
											</TD>
										</TR>
										<c:forEach items="${requestScope.list}" var="hash">
											<TR>
												<TD>
													${hash.dept_name}
												</TD>
												<TD>
													${hash.job_name}
												</TD>
												<TD>
													<input type="text" name="name" class="input"
														value=${hash.salary}>
												</TD>
											</TR>
										</c:forEach>
									</TABLE>
								</td>

								<td width="100px"></td>
								<td width="300px">
									<div align="center">
										<strong><font color="#990000">额外薪资设定</font> </strong>
									</div>
									<TABLE table width="100%" border="1" cellpadding="0"
										cellspacing="0" bgcolor="#EAE2F3" bordercolorlight="#A545A3"
										bordercolordark="#FFFFFF">
										<TR class="tableheader">
											<TD>
												项目
											</TD>
											<TD>
												薪资
											</TD>
										</TR>
										<TR>
											<TD>
												住房补助
											</TD>
											<TD>
												<input type="text" name="name" class="input" value="300"}>
											</TD>
										</TR>
										
										<TR>
											<TD>
												三餐补助
											</TD>
											<TD>
												<input type="text" name="name" class="input" value="300"}>
											</TD>
										</TR>
										
										<TR>
											<TD>
												全勤补助
											</TD>
											<TD>
												<input type="text" name="name" class="input" value="500"}>
											</TD>
										</TR>
										<TR>
											<TD>
												加班补助
											</TD>
											<TD>
												<input type="text" name="name" class="input" value="100"}>
											</TD>
										</TR>
										<TR>
											<TD>
												迟到早退
											</TD>
											<TD>
												<input type="text" name="name" class="input" value="-20"}>
											</TD>
										</TR>
										
										<TR>
											<TD>
												无故缺勤
											</TD>
											<TD>
												<input type="text" name="name" class="input" value="-100"}>
											</TD>
										</TR>
									</TABLE>

								</td>
							</tr>
						</table>
						<p align="center">
							<input type="submit" value="确&nbsp&nbsp认">
							<input type="reset" value="重&nbsp&nbsp置">
						</p>
					</form>
				</CENTER>
			</td>
		</table>
	</body>
</html>

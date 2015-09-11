<%@page language="java" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
		    + request.getServerName() + ":" + request.getServerPort()
		    + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>人力资源管理系统-修改培训信息</title>
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
	font-family: 微软雅黑;
}

.content {
	height: 100px;
	width: 600px;
	font-family: 微软雅黑;
	font-size: 12pt;
	font-family: 微软雅黑;
}

.td {
	width: 100px;
}

.td2 {
	width: 200px;
}

select {
	width: 80%;
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
							当前位置：企业管理&gt;&gt;编辑培训信息
						</td>
						<td align="right">
							<A HREF="train.do?method=list">返回培训信息界面</A>
						</td>
					</tr>
				</table>
				<p>
					&nbsp;
				</p>
				<FORM METHOD=POST
					ACTION="train.do?method=update&id=${requestScope.id}" name="form1"">


					<table width="70%" border="1" cellpadding="0" cellspacing="0"
						bgcolor="#EAE2F3" bordercolorlight="#A545A3"
						bordercolordark="#FFFFFF" align="center">
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="2" cellpadding="3">
									<tr>
										<td bgcolor="#E7DCF1">
											<div align="center">
												<strong><font color="#990000">新增培训信息</font> </strong>
											</div>
										</td>
									</tr>
								</table>

								<table width="100%" cellpadding="2" cellspacing="3"
									bgcolor="#F2EDF8">
									<tr>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>培训标题</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="title" class="input"
													value=${requestScope.title}>
											</p>
										</td>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>培训部门</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="dept_name" class="input"
													value=${requestScope.dept_name}>
											</p>
										</td>
									</tr>
									<tr>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>开始时间</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="stime" class="input"
													value=${requestScope.stime}>
											</p>
										</td>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>结束时间</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="etime" class="input"
													value=${requestScope.etime}>
											</p>
										</td>
									</tr>

									<tr>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>培训讲师</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="leader" class="input"
													value=${requestScope.leader}>
											</p>
										</td>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>培训人数</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="member" class="input"
													value=${requestScope.member}>
											</p>
										</td>
									</tr>

									<tr height="50%">
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>培训内容</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2" colspan="3">
											<p align="center">
												<input type="text" name="content" class="content"
													value=${requestScope.content}>
											</p>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<p align="center">
						<input type="submit" value="确&nbsp&nbsp认">
						<input type="reset" value="重&nbsp&nbsp置">
					</p>
				</FORM>
			</td>
		</table>
	</body>
</html>

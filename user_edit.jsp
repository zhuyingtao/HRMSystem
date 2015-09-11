<%@page language="java" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
		    + request.getServerName() + ":" + request.getServerPort()
		    + path + "/";
%>
<%
    request.setCharacterEncoding("utf8");
    response.setCharacterEncoding("utf8");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>人力资源管理系统-修改用户信息</title>
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
							当前位置：系统管理&gt;&gt;修改用户信息
						</td>
						<td align="right">
							<A HREF="user.do?act=list">返回查看用户页面</A>
						</td>
					</tr>
				</table>
				<p>
					&nbsp;
				</p>
				<FORM METHOD=POST ACTION="user.do?act=updateinfo" name="form1"">
					<INPUT TYPE="hidden" NAME="id" value="${requestScope.id}">

					<table width="70%" border="1" cellpadding="0" cellspacing="0"
						bgcolor="#EAE2F3" bordercolorlight="#A545A3"
						bordercolordark="#FFFFFF" align="center">
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="2" cellpadding="3">
									<tr>
										<td bgcolor="#E7DCF1">
											<div align="center">
												<strong><font color="#990000">员工个人信息</font> </strong>
											</div>
										</td>
									</tr>
								</table>

								<table width="100%" cellpadding="2" cellspacing="3"
									bgcolor="#F2EDF8">
									<tr>
										<td bgcolor="#E2D8EF">
											<p align="center">
												<strong>姓名</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3">
											<p align="center">
												<input type="text" name="name" class="input"
													value=${requestScope.name}>
											</p>
										</td>
										<td bgcolor="#E2D8EF">
											<p align="center">
												<strong>性别</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3">
											<p align="center">
												<input type="text" name="sex" class="input"
													value=${requestScope.sex}>
											</p>
										</td>
									</tr>
									<tr>
										<td bgcolor="#E2D8EF">
											<p align="center">
												<strong>生日</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3">
											<p align="center">
												<input type="text" name="birthday" class="input"
													value=${requestScope.birthday}>
											</p>
										</td>
										<td bgcolor="#E2D8EF">
											<p align="center">
												<strong>年龄</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3">
											<p align="center">
												<input type="text" name="age" class="input"
													value=${requestScope.age}>
											</p>
										</td>
									</tr>

									<tr>
										<td bgcolor="#E2D8EF">
											<p align="center">
												<strong>籍贯</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3">
											<p align="center">
												<input type="text" name="native" class="input"
													value=${requestScope.native}>
											</p>
										</td>
										<td bgcolor="#E2D8EF">
											<p align="center">
												<strong>政治面貌</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3">
											<p align="center">
												<input type="text" name="politicalface" class="input"
													value=${requestScope.politicalface}>
											</p>
										</td>
									</tr>

									<tr>
										<td bgcolor="#E2D8EF">
											<p align="center">
												<strong>移动电话</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3">
											<p align="center">
												<input type="text" name="mobile" class="input"
													value=${requestScope.mobile}>
											</p>
										</td>
										<td bgcolor="#E2D8EF">
											<p align="center">
												<strong>固定电话</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3">
											<p align="center">
												<input type="text" name="fphone" class="input"
													value=${requestScope.fphone}>
											</p>
										</td>
									</tr>

									<tr>
										<td bgcolor="#E2D8EF">
											<p align="center">
												<strong>文化水平</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3">
											<p align="center">
												<input type="text" name="education" class="input"
													value=${requestScope.education}>
											</p>
										</td>
										<td bgcolor="#E2D8EF">
											<p align="center">
												<strong>专业</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3">
											<p align="center">
												<input type="text" name="profession" class="input"
													value=${requestScope.profession}>
											</p>
										</td>
									</tr>

									<tr>
										<td bgcolor="#E2D8EF">
											<p align="center">
												<strong>身份证号</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3">
											<p align="center">
												<input type="text" name="identify_id" class="input"
													value=${requestScope.identify_id}>
											</p>
										</td>
										<td bgcolor="#E2D8EF">
											<p align="center">
												<strong>E-mail</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3">
											<p align="center">
												<input type="text" name="email" class="input"
													value=${requestScope.email}>
											</p>
										</td>
									</tr>

									<tr>
										<td bgcolor="#E2D8EF">
											<p align="center">
												<strong>地址</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3">
											<p align="center">
												<input type="text" name="address" class="input"
													value=${requestScope.address}>
											</p>
										</td>
										<td bgcolor="#E2D8EF">
											<p align="center">
												<strong>婚姻</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3">
											<p align="center">
												<input type="text" name="marry" class="input"
													value=${requestScope.marry}>
											</p>
										</td>
									</tr>

									<tr>
										<td bgcolor="#E2D8EF">
											<p align="center">
												<strong>所属部门</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3">
											<p align="center">
												<input type="text" name="dept_id" class="input"
													value=${requestScope.dept_id}>
											</p>
										</td>
										<td bgcolor="#E2D8EF">
											<p align="center">
												<strong>所属职位</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3">
											<p align="center">
												<input type="text" name="job_id" class="input"
													value=${requestScope.job_id}>
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

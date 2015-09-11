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
		<title>人力资源管理系统-增加用户信息</title>
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

.td {
	width: 100px;
}

.td2 {
	width: 200px;
}
select {
	width:80%;
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
							当前位置：系统管理&gt;&gt;增加用户信息
						</td>
						<td align="right">
							<A HREF="user_add.jsp">返回增加用户界面</A>
						</td>
					</tr>
				</table>
				<p>
					&nbsp;
				</p>
				<FORM METHOD=POST ACTION="user.do?act=insertinfo" name="form1"">
					<INPUT TYPE="hidden" NAME="userid" value=${requestScope.userid}>
					<INPUT TYPE="hidden" NAME="type" value=${requestScope.type}>

					<table width="70%" border="1" cellpadding="0" cellspacing="0"
						bgcolor="#EAE2F3" bordercolorlight="#A545A3"
						bordercolordark="#FFFFFF" align="center">
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="2" cellpadding="3">
									<tr>
										<td bgcolor="#E7DCF1">
											<div align="center">
												<strong><font color="#990000">新增员工个人信息</font> </strong>
											</div>
										</td>
									</tr>
								</table>

								<table width="100%" cellpadding="2" cellspacing="3"
									bgcolor="#F2EDF8">
									<tr>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>姓名</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="name" class="input"
													value=${requestScope.name}>
											</p>
										</td>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>性别</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="sex" class="input">
											</p>
										</td>
									</tr>
									<tr>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>生日</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="birthday" class="input">
											</p>
										</td>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>年龄</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="age" class="input">
											</p>
										</td>
									</tr>

									<tr>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>籍贯</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="native" class="input">
											</p>
										</td>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>政治面貌</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="politicalface" class="input">
											</p>
										</td>
									</tr>

									<tr>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>移动电话</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="mobile" class="input">
											</p>
										</td>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>固定电话</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="fphone" class="input">
											</p>
										</td>
									</tr>

									<tr>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>文化水平</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="education" class="input">
											</p>
										</td>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>专业</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="profession" class="input">
											</p>
										</td>
									</tr>

									<tr>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>身份证号</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="identify_id" class="input">
											</p>
										</td>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>E-mail</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="email" class="input">
											</p>
										</td>
									</tr>

									<tr>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>地址</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="address" class="input">
											</p>
										</td>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>婚姻</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<input type="text" name="marry" class="input">
											</p>
										</td>
									</tr>

									<tr>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>所属部门</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<select name="dept_id">
													<option value="1">
														技术部
													</option>
													<option value="2">
														开发部
													</option>
													<option value="3">
														人事部
													</option>
													<option value="4">
														销售部
													</option>
													<option value="5">
														生产部
													</option>
													<option value="6">
														综合部
													</option>
												</select>
											</p>
										</td>
										<td bgcolor="#E2D8EF" class="td">
											<p align="center">
												<strong>所属职位</strong>
											</p>
										</td>
										<td bgcolor="#EAE2F3" class="td2">
											<p align="center">
												<select name="job_id">
													<option value="1">
														经理
													</option>
													<option value="2">
														员工
													</option>
												</select>
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

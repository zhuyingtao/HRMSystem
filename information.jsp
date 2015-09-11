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
		<title>人力资源管理系统-个人信息</title>
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
				<p class="header">
					当前位置：个人信息
				</p>
				<p>
					&nbsp
				</p>
				<p>
					&nbsp
				</p>
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
											${requestScope.name}
										</p>
									</td>
									<td bgcolor="#E2D8EF">
										<p align="center">
											<strong>性别</strong>
										</p>
									</td>
									<td bgcolor="#EAE2F3">
										<p align="center">
											${requestScope.sex}
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
											${requestScope.birthday}
										</p>
									</td>
									<td bgcolor="#E2D8EF">
										<p align="center">
											<strong>年龄</strong>
										</p>
									</td>
									<td bgcolor="#EAE2F3">
										<p align="center">
											${requestScope.age}
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
											${requestScope.native}
										</p>
									</td>
									<td bgcolor="#E2D8EF">
										<p align="center">
											<strong>政治面貌</strong>
										</p>
									</td>
									<td bgcolor="#EAE2F3">
										<p align="center">
											${requestScope.politicalface}
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
											${requestScope.mobile}
										</p>
									</td>
									<td bgcolor="#E2D8EF">
										<p align="center">
											<strong>固定电话</strong>
										</p>
									</td>
									<td bgcolor="#EAE2F3">
										<p align="center">
											${requestScope.fphone}
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
											${requestScope.education}
										</p>
									</td>
									<td bgcolor="#E2D8EF">
										<p align="center">
											<strong>专业</strong>
										</p>
									</td>
									<td bgcolor="#EAE2F3">
										<p align="center">
											${requestScope.profession}
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
											${requestScope.identify_id}
										</p>
									</td>
									<td bgcolor="#E2D8EF">
										<p align="center">
											<strong>E-mail</strong>
										</p>
									</td>
									<td bgcolor="#EAE2F3">
										<p align="center">
											${requestScope.email}
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
											${requestScope.address}
										</p>
									</td>
									<td bgcolor="#E2D8EF">
										<p align="center">
											<strong>婚姻</strong>
										</p>
									</td>
									<td bgcolor="#EAE2F3">
										<p align="center">
											${requestScope.marry}
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
											${requestScope.dept_id}
										</p>
									</td>
									<td bgcolor="#E2D8EF">
										<p align="center">
											<strong>所属职位</strong>
										</p>
									</td>
									<td bgcolor="#EAE2F3">
										<p align="center">
											${requestScope.job_id}
										</p>
									</td>
								</tr>
							</table>

						</td>
					</tr>
				</table>
			</td>
		</table>
	</body>
</html>

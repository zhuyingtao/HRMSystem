<%@page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jsf_core"%>
<%@taglib prefix="emis" uri="emis"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
		    + request.getServerName() + ":" + request.getServerPort()
		    + path + "/";
%>
<%
    boolean isSign = false;
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>人力资源管理系统-培训信息</title>
		<meta name="pragma" content="no-cache">
		<meta name="cache-control" content="no-cache">
		<meta name="Content-Type" content="text/html;charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<base href="<%=basePath%>">
		
		<script type="text/javascript">
		function success(){
			alert("报名成功！");
			}
		</script>

	</head>

	<body>
		<%@include file="inc/top.jsp"%>

		<table>
			<%@include file="inc/menu.jsp"%>

			<td class="main">
				<table class="header">
					<tr>
						<td>
							当前位置：企业管理&gt;&gt;培训详细信息
						</td>
						<td align="right">
							<A HREF="train.do?method=list">返回培训信息界面</A>
						</td>
					</tr>
				</table>
				<p>
					&nbsp;
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
											<strong><font color="#990000">培训详细信息</font> </strong>
										</div>
									</td>
								</tr>
							</table>

							<table width="100%" cellpadding="2" cellspacing="3"
								bgcolor="#F2EDF8">
								<tr>
									<td bgcolor="#E2D8EF">
										<p align="center">
											<strong>培训标题</strong>
										</p>
									</td>
									<td bgcolor="#EAE2F3">
										<p align="center">
											${requestScope.title}
										</p>
									</td>
									<td bgcolor="#E2D8EF">
										<p align="center">
											<strong>培训部门</strong>
										</p>
									</td>
									<td bgcolor="#EAE2F3">
										<p align="center">
											${requestScope.dept_name}
										</p>
									</td>
								</tr>
								<tr>
									<td bgcolor="#E2D8EF">
										<p align="center">
											<strong>开始时间</strong>
										</p>
									</td>
									<td bgcolor="#EAE2F3">
										<p align="center">
											${requestScope.stime}
										</p>
									</td>
									<td bgcolor="#E2D8EF">
										<p align="center">
											<strong>结束时间</strong>
										</p>
									</td>
									<td bgcolor="#EAE2F3">
										<p align="center">
											${requestScope.etime}
										</p>
									</td>
								</tr>

								<tr>
									<td bgcolor="#E2D8EF">
										<p align="center">
											<strong>培训讲师</strong>
										</p>
									</td>
									<td bgcolor="#EAE2F3">
										<p align="center">
											${requestScope.leader}
										</p>
									</td>
									<td bgcolor="#E2D8EF">
										<p align="center">
											<strong>培训人数</strong>
										</p>
									</td>
									<td bgcolor="#EAE2F3">
										<p align="center">
											${requestScope.member}
										</p>
									</td>
								</tr>

								<tr>
									<td bgcolor="#E2D8EF">
										<p align="center">
											<strong>培训已报人数</strong>
										</p>
									</td>
									<td bgcolor="#EAE2F3">
										<p align="center">
											${requestScope.now_member}
										</p>
									</td>

									<td bgcolor="#E2D8EF">
										<p align="center">
											<strong>培训尚余名额</strong>
										</p>
									</td>
									<td bgcolor="#EAE2F3">
										<p align="center">
											<%
											    int member = Integer.parseInt((String) request
													    .getAttribute("member"));
											    int now_member = Integer.parseInt((String) request
													    .getAttribute("now_member"));
											    int rest = member - now_member;
											%>
											<%=rest%>
										</p>
									</td>
								</tr>

								<tr height="50%">
									<td bgcolor="#E2D8EF">
										<p align="center">
											<strong>培训内容</strong>
										</p>
									</td>
									<td bgcolor="#EAE2F3" colspan="3">
										<p align="center">
											${requestScope.content}
										</p>
									</td>
								</tr>

							</table>

							<p align="center">
								<input type="submit" value="报名参加培训" onclick="success()">
							</p>

						</td>
					</tr>
				</table>
			</td>
		</table>
	</body>
</html>

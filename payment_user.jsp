<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jsf_core"%>
<%
    request.setCharacterEncoding("utf8");
    response.setCharacterEncoding("utf8");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>人力资源管理系统-查看用户</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">

		<style type="text/css">
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
							当前位置：薪资管理&gt;&gt;个人工资
						</td>
					</tr>
				</table>
				<CENTER>
					<div>
						<strong><font color="#990000">用户个人薪资信息</font> </strong>
					</div>
					<TABLE table width="80%" border="1" cellpadding="0" cellspacing="0"
						bgcolor="#EAE2F3" bordercolorlight="#A545A3"
						bordercolordark="#FFFFFF">
						<TR class="tableheader">
							<td>
								编号
							</td>
							<TD>
								员工姓名
							</TD>
							<TD>
								月份
							</TD>
							<TD>
								基本工资
							</TD>
							<td>
								额外工资
							</td>
							<td>
								奖金
							</td>
							<td>
								罚金
							</td>
							<td>
								总工资
							</td>
							<td>
								操作
							</td>
						</TR>
						<c:forEach items="${requestScope.list}" var="hash">
							<TR>
								<TD>
									${hash.employee_id}
								</TD>
								<TD>
									${hash.name}
								</TD>
								<TD>
									${hash.month}
								</TD>
								<TD>
									${hash.basic_salary}
								</TD>
								<TD>
									${hash.extra_salary}
								</TD>
								<TD>
									${hash.bonus}
								</TD>
								<TD>
									${hash.forfeit}
								</TD>
								<td>
									${hash.basic_salary}
								</td>
								<td>
									<a href="user.do?act=edit&userid=${hash.userid}">修改额外薪金</a>&nbsp&nbsp
								</TD>
							</TR>
						</c:forEach>
					</TABLE>
				</CENTER>
			</td>
		</table>
	</body>
</html>
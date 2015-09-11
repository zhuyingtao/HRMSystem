<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>人力资源管理系统-修改密码</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<script type="text/javascript">
			function isValid(form){
				var prepwd=form.prepwd.value;
				var newpwd=form.newpwd.value;
				var newpwd2=form.newpwd2.value;
				if(prepwd==""){
					alert("原密码不能为空！");
					return false;
				}
				if(newpwd==""){
					alert("新密码不能为空！");
					return false;
				}
				if(newpwd2==""){
					alert("确认密码不能为空！");
					return false;
				}
				if(newpwd!=newpwd2){
					alert("两次输入的密码不一致！");
					return false;
				}
				return true;
			}
		</script>

		<style type="text/css">
.field {
	width: 35%;
	height: 50%;
	margin: 200px, 200px, 400px, 200px;
}
</style>
	</head>

	<body>
		<%@include file="inc/top.jsp"%>

		<table>
			<%@include file="inc/menu.jsp"%>

			<td class="main">
				<p class="header">
					当前位置：修改密码
				</p>
				<center>
					<fieldset class="field">
						<legend>
							修改密码：
						</legend>
						<form name="form1" action="user.do?act=update" method="post"
							onsubmit="return isValid(this);">
							<p>
								现在的密码：
								<input type="password" name="prepwd" size="20">
							</p>
							<p>
								设置新的密码：
								<input type="password" name="newpwd" size="20">
							</p>
							<p>
								确认新的密码：
								<input type="password" name="newpwd2" size="20">
							</p>
							<p>
								<input type="submit" value="确&nbsp&nbsp认">
								<input type="reset" value="重&nbsp&nbsp置">
							</p>
						</form>
					</fieldset>
				</center>
				<%
				    String act = request.getParameter("act");
				    if (act == null) {
				    } else if (act.equals("fail")) {
						out.print("<p>原密码错误，密码修改失败!</p>");
				    } else if (act.equals("success")) {
						out.print("<p>密码修改成功!</p>");
				    }
				%>
			</td>

		</table>
	</body>
</html>
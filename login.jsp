<%@page language="java" pageEncoding="UTF-8"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%
    String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>人力资源管理系统-登录窗口</title>

		<meta name="pragma" content="no-cache">
		<meta name="cache-control" content="no-cache">
		<meta name="keywords" content="人力，资源，管理">
		<meta name="description" content="人力资源管理系统-登录窗口">
		<meta name="Content-Type" content="text/html;charset=UTF-8">

		<link rel="stylesheet" type="text/css" href="css/style.css">
		<base href="<%=basePath%>">

		<style type="text/css">
body {
	background-image: url(images/login.jpg);
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-position: center;
}

table {
	margin-left: 57%;
	margin-top: 23%;
}

input {
	font-family: "微软雅黑";
}
</style>

		<script type="text/javascript">
			function isValid(form){
				var username=form.username.value;
				var password=form.password.value;
				if(username==""){
					alert("用户名不能为空！");
					return false;
				}
				if(password==""){
					alert("密码不能为空！");
					return false;
				}
				return true;
			}
		</script>
	</head>

	<body>

		<form name="form1" action="login.do" method="post"
			onsubmit="return isValid(this);">
			<table>
				<tr>
					<input type="text" name="userid" size="25">
				</tr>
				<tr>
					&nbsp
				</tr>
				<tr>
					<input type="password" name="password" size="25">
				</tr>
				<tr>
					<td>
						<input type="submit" value="登&nbsp&nbsp录">
					</td>
					<td>
						<input type="reset" value="重&nbsp&nbsp置">
					</td>
				</tr>
			</table>
		</form>
	</body>

</html>


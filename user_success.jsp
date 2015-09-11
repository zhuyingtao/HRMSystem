<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>人力资源管理系统-增加用户</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<script type="text/javascript">
			function isValid(form){
				var userid=form.userid.value;
				var name=form.name.value;
				if(userid==""){
					alert("用户帐号不能为空！");
					return false;
				}
				if(name==""){
					alert("员工姓名不能为空！");
					return false;
				}
				return true;
			}

			var XMLHttpReq=false;//设一个变量

			function checkUsername(){
				var username=document.getElementById("username").value;
				if(username==""){
					alert("请输入用户名！");
				}else{
					send('ajax.do?username='+username);
				}
			}
			function send(url){
			    //发送请求函数
				createXMLHttpRequest();
				XMLHttpReq.open("GET",url,true);
				XMLHttpReq.onreadystatechange=parse; //指定响应的函数
				XMLHttpReq.send(null); //发送请求
			}
			
			//创建一个XMLHttpRequest对象

			function createXMLHttpRequest(){
				if(window.XMLHttpRequest){
					XMLHttpReq=new XMLHttpRequest();
				}else if(window.ActiveXObject){
					try{
						XMLHttpReq=new ActiveXObject("Msxml2.XMLHTTP");
					}catch(e){
						try{
							XMLHttpReq=new ActiveXObject("Microsoft.XMLHTTP");
						}catch(e){}
					}
				}

			}

			function parse(){
				if(XMLHttpReq.readyState==4){
					if(XMLHttpReq.status==200){
						var res=XMLHttpReq.responseXML.getElementsByTagName("content")[0].firstChild.data;
						if(res=="ok"){
						document.getElementById("status").innerHTML="该用户名可以使用!";
						}else{
						document.getElementById("status").innerHTML=res;
						window.alert(res);
						}
					}else{
						window.alert("所请求的页面有异常！");
					}
				}
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
					当前位置：增加用户
				</p>
				<center>
					<fieldset class="field">
						<legend>
							新增用户：
						</legend>
						<form name="form1" action="user.do?act=addinfo" method="post"
							onsubmit="return isValid(this);">
							<p>
								用户帐号：
								<input type="text" name="userid" size="20">
							</p>
							<p>
								员工姓名：
								<input type="text" name="name" size="20">
							</p>
							<p>
								权限：
								<input type="radio" name="type" value="0" checked="true">
								管理员
								<input type="radio" name="type" value="1">
								经理
								<input type="radio" name="type" value="2">
								员工
							</p>
							<p>
								<input type="submit" value="填写用户详细信息">
							</p>
						</form>
					</fieldset>
				</center>
			</td>

		</table>
	</body>
</html>
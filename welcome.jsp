<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.lang.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>人力资源管理系统-首页</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<%
		    int ischeck = (Integer) session.getAttribute("ischeck");
			int isleave = (Integer) session.getAttribute("isleave");
		%>


		<script type="text/javascript">
		function checkCome(){
			var date=new Date();
			var hour=date.getHours();
			var ischeck=<%=ischeck%>;
			if(ischeck==1){
				alert("您今天已经签到，不能重复签到！");
				return false;
			}else if(hour>"9"){
				alert("您已迟到！");
			}
			return true;
		}

		function checkLeave(){
			var date=new Date();
			var hour=date.getHours();
			var isleave=<%=isleave%>;
			if(isleave==1){
				alert("您今天已经签离，不能重复签离！");
				return false;
			}else if(hour<"17"){
				confirm("现在尚未下班，您确定要签离？");
			}
			return true;
		}
</script>

		<style type="text/css">
.main { /*	background-image: url(images/main.jpg);
	background-position: center;
	background-repeat: no-repeat;*/
	
}

.welcome {
	width: 100%;
	font-size: 40px;
	color: red;
	margin-left: 350px;
	margin-top: 50px;
}

.table {
	margin-top: 50px;
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
							当前位置：首页
						</td>
					</tr>
				</table>
				<p>
					&nbsp;
				</p>
				<p>
					&nbsp;
				</p>

				<p class="welcome">
					欢迎使用人力资源管理系统!
				</p>

				<p>
					&nbsp;
				</p>
				<div id="time" align="center">
					<script>
	document.getElementById('time').innerHTML = new Date().toLocaleString()
			+ ' 星期' + '日一二三四五六'.charAt(new Date().getDay());
	setInterval(
			"document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",
			1000);
	</script>
				</div>
				<table align="center" class="table">
					<tr>
						<td rowspan="2">
							<font color="red"><%=session.getAttribute("userid")%>,</font>
						</td>
						<td>
							&nbsp;&nbsp;今日
							<%
							    if (ischeck == 0) {
							%>
							<font color="red">尚未签到！</font>
							<%
							    } else if (ischeck == 1) {
							%>
							<font color="red">已经签到！</font>
							<%
							    }
							%>
						</td>
						<form action="check.do?method=come" method="post"
							onsubmit="return checkCome();">
						<td>
							&nbsp;&nbsp;
							<input type="submit" value="&nbsp;签到&nbsp;">
						</td>
						</form>
					</tr>

					<tr>
						<td>
							&nbsp;&nbsp;今日
							<%
							    if (isleave == 0) {
							%>
							<font color="red">尚未签离！</font>
							<%
							    } else if (isleave == 1) {
							%>
							<font color="red">已经签离！</font>
							<%
							    }
							%>
						</td>

						<input type="hidden" id="ischeck" value="<%=ischeck%>">
						<input type="hidden" id="isleave" value="<%=isleave%>">
						<form action="check.do?method=leave" method="post"
							onsubmit="return checkLeave();">
							<td>
								&nbsp;&nbsp;
								<input type="submit" value="&nbsp;签离&nbsp;">
							</td>
						</form>
					</tr>

				</table>
			</td>
		</table>
	</body>
</html>

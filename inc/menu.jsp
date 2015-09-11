<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<td class="menu">
	<ul>
		<li>
			<A HREF="welcome.jsp">首页面</A>
		</li>
	</ul>

	<ul>
		个人管理
		<li>
			<A HREF="user.do?act=info&userid=${sessionScope.userid}">个人档案</A>
		</li>
		<li>
			<A HREF="check.do?method=list">考勤管理</A>
		</li>
	</ul>

	<ul>
		薪资管理
		<li>
			<A HREF="payment.do?act=usersalary">个人工资</A>
		</li>
		<li>
			<A HREF="payment.do?act=jobsalary">薪资设定</A>
		</li>
	</ul>
	<ul>
		企业管理
		<li>
			<A HREF="train.do?method=list">培训管理</A>
		</li>
		<li>
			<A HREF="meeting.do?method=list">部门管理</A>
		</li>
	</ul>

	<ul>
		系统管理
		<li>
			<A HREF="repwd.jsp">修改密码</A>
		</li>
		<li>
			<A HREF="user_add.jsp">增加用户</A>
		</li>
		<li>
			<A HREF="user.do?act=list">查看用户</A>
		</li>
	</ul>
	<ul>
		<li>
			<A HREF="logout.do">退出</A>
		</li>
	</ul>
</td>
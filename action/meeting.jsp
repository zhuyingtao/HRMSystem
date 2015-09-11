<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javabean.MeetingBean"%>
<%
	String method = request.getParameter("method");
	String toPage = "../meeting.jsp";

	//未登录时跳转到登录页面
	if (session.getAttribute("username") == null) {
		toPage = "../login.jsp";
	} else {
		String username = (String) session.getAttribute("username");//当前登录用户名

		//取得分页参数

		String pageSize = request.getParameter("pageSize");
		String pageNo = request.getParameter("pageNo");

		if (pageSize == null) {
			pageSize = "20";
		}
		if (pageNo == null) {
			pageNo = "1";
		}
		//保存分页参数，传递给下一个页面
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("pageNo", pageNo);

		MeetingBean meetingBean = new MeetingBean();
		//根据method参数执行各种操作
		if (method.equals("list")) {//列表操作
			meetingBean.list(request, username, pageSize, pageNo);
			toPage = "../meeting.jsp";
		}
		if (method.equals("delete")) {//删除操作
			meetingBean.delete(request, username);
			meetingBean.list(request, username, pageSize, pageNo);
			toPage = "../meeting.jsp";
		}
		if (method.equals("add")) {//新增操作
			toPage = "../meeting_add.jsp";
		}
		if (method.equals("insert")) {//插入操作
			meetingBean.insert(request, username);
			meetingBean.list(request, username, pageSize, pageNo);
			toPage = "../meeting.jsp";
		}
		if (method.equals("edit")) {//编辑操作
			meetingBean.select(request, username);
			toPage = "../meeting_edit.jsp";
		}
		if (method.equals("update")) {//更新操作
			meetingBean.update(request, username);
			meetingBean.list(request, username, pageSize, pageNo);
			toPage = "../meeting.jsp";
		}
	}
%>
<jsp:forward page="<%=toPage%>" />


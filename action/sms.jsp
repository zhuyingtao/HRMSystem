<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javabean.SmsBean"%>
<%
	String method = request.getParameter("method");
	String toPage = "../sms.jsp";

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

		SmsBean smsBean = new SmsBean();
		//根据method参数执行各种操作
		if (method.equals("list")) {//列表操作
			smsBean.list(request, username, pageSize, pageNo);
			toPage = "../sms.jsp";
		}
		if (method.equals("delete")) {//删除操作
			smsBean.delete(request, username);
			smsBean.list(request, username, pageSize, pageNo);
			toPage = "../sms.jsp";
		}
		if (method.equals("add")) {//新增操作
			toPage = "../sms_add.jsp";
		}
		if (method.equals("insert")) {//插入操作
			smsBean.insert(request, username);
			smsBean.list(request, username, pageSize, pageNo);
			toPage = "../sms.jsp";
		}
		if (method.equals("read")) {//更新操作
			smsBean.read(request, username);
			smsBean.list(request, username, pageSize, pageNo);
			toPage = "../sms.jsp";
		}
	}
%>
<jsp:forward page="<%=toPage%>" />
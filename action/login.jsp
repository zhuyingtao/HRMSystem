<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="javabean.UserBean"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");

	UserBean userBean = new UserBean();
	boolean isValid = userBean.valid(username, password);

	if (isValid) {
		session.setAttribute("username", username);
		response.sendRedirect("../welcome.jsp");
	} else {
		response.sendRedirect("../login.jsp");
	}
%>
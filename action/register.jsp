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
	boolean isExist = userBean.isExist(username);

	if (!isExist) {
		userBean.add(username, password);
		response.sendRedirect("../login.jsp");
	} else {
		response.sendRedirect("../register.jsp");
	}
%>
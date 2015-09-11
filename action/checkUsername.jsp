<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="javabean.UserBean"%>
<%
	response.setContentType("text/xml");
	response.setHeader("Cache-Control", "no-cache");
	String username = request.getParameter("username");

	UserBean userBean = new UserBean();
	boolean isExist = userBean.isExist(username);

	if (isExist) {
		out.println("<content>该用户名已经存在!</content>");
	} else {
		out.println("<content>ok</content>");
	}
%>
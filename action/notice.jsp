<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javabean.NoticeBean"%>
<%
	String method = request.getParameter("method");
	String toPage = "../notice.jsp";

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

		NoticeBean noticeBean = new NoticeBean();

		//根据method参数执行各种操作
		if (method.equals("list")) {//列表操作
			noticeBean.list(request, username, pageSize, pageNo);
			toPage = "../notice.jsp";
		}
		if (method.equals("delete")) {//删除操作
			noticeBean.delete(request, username);
			noticeBean.list(request, username, pageSize, pageNo);
			toPage = "../notice.jsp";
		}
		if (method.equals("add")) {//新增操作
			toPage = "../notice_add.jsp";
		}
		if (method.equals("insert")) {//插入操作
			noticeBean.insert(request, username);
			noticeBean.list(request, username, pageSize, pageNo);
			toPage = "../notice.jsp";
		}
		if (method.equals("edit")) {//编辑操作
			noticeBean.select(request, username);
			toPage = "../notice_edit.jsp";
		}
		if (method.equals("update")) {//更新操作
			noticeBean.update(request, username);
			noticeBean.list(request, username, pageSize, pageNo);
			toPage = "../notice.jsp";
		}
	}
%>
<jsp:forward page="<%=toPage%>" />

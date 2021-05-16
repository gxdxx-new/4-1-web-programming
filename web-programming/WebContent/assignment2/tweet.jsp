<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import='java.util.*' %>
<%
	request.setCharacterEncoding("utf-8");

	ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("msgs");
	if(msgs == null) {
		msgs = new ArrayList<String>();
		application.setAttribute("msgs", msgs);
	}
	msgs.add(request.getParameter("username")+" :: "+request.getParameter("tweet")+" , "+new java.util.Date());
	
	response.sendRedirect("twitter_list.jsp");
%> 
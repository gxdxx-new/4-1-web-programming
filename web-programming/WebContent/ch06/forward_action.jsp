<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>
<%-- page_control_end로 넘어가면 url엔 forward_action.jsp로 나타남 --%>
<jsp:forward page="page_control_end.jsp">
	<jsp:param name="tel" value="053-810-2559"/>
</jsp:forward>
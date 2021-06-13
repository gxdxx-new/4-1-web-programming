<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% request.setCharacterEncoding("utf-8"); %>

<c:redirect url="choose.jsp">	<!-- choose.jsp 주소가 나옴 -->
	<c:param name="sel">a</c:param>
</c:redirect>

<jsp:forward page="choose.jsp">	<!-- redirect.jsp 주소가 나옴 -->
	<jsp:param name="sel" value="a"/>
</jsp:forward>

<c:redirect url="target.jsp"/>	<!-- parameter 전달이 안됨 -->

<jsp:forward page="target.jsp"/>	<!-- paramter 전달이 됨 -->
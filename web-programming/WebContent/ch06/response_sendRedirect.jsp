<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- 이전에 받은 정보들이 사라지고 새로운 request가 만들어져서 보내짐 --%>
<%-- page_control_end.jsp가 불려지면 url엔 page_control_end.jsp가 나타남 --%>
<%	response.sendRedirect("page_control_end.jsp"); %>
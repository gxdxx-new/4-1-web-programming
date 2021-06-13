<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Core Library</title>
</head>
<body>
	<h3>&lt;c;for&gt;</h3>
	<p>
	<c:forEach var="i" items="${members}" begin="0" varStatus="status" end="5">	<!-- index:0~5, count:1~6 -->
		index : ${status.index} /
		count : ${status.count} <br>
		name : ${i.name} <br>
		email : ${i.email} <br>
		<hr>
	</c:forEach>
	
	<c:forTokens items="홍길동,010-1234-5678,대구" delims="," var="sel">
		${sel} <br>
	</c:forTokens>
</body>
</html>
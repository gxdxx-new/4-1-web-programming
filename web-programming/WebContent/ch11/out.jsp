<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch11 : out</title>
</head>
<body bgcolor="#FFFFFF">

	<h3>&lt;c:out&gt;</h3>
	
	<table border="1">
		<c:forEach var="member" items="${members}">
			<tr>
				<td><c:out value="${member.name}"/></td>	<!-- <td>${member.name}</td>와 같음 -->
				<td><c:out value="${member.email}" escapeXml="false">
					<font color=red>email 없음</font>		<!-- default -->
					</c:out>
				</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>	
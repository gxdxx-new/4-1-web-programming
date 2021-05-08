<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인 정보 출력 - JSP</h2>
	로그인 id : <%= request.getParameter("id") %><br><br>
	패스워드 : <%= request.getParameter("password") %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 현재 JSP로 전달되는 내용을 지정한 캐릭터셋으로 변환 --%>
<% request.setCharacterEncoding("UTF-8"); %>

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
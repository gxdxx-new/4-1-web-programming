<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="mybean" scope="request" class="webProgramming.ch07.LoginInfo"/>
<jsp:setProperty property="*" name="mybean"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 출력</title>
</head>
<body>
	<div align="center">
		<h2>로그인예제</h2>
		<hr>
		<%
			if(mybean.isvalid())
				out.println("로그인 성공!!!");
			else
				out.println("로그인 실패!!!");
		%>
		<hr>
		사용자 아이디: <jsp:getProperty property="id" name="mybean"/><br>
		사용자 패스워드: ${mybean.password}
		사용자 패스워드(2): <%=mybean.getPassword() %>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("utf-8");
	String username = request.getParameter("username");
	if(username == null || username.isEmpty()) {
%>
		<script>
			alert("로그인을 먼저 해주세요.");
			window.location("login.jsp");
		</script>
<%
	}
	String sessionName = (String)session.getAttribute("username");
	if(sessionName == null || sessionName.isEmpty()) {
		session.setAttribute("username", username);
	}
%>
</head>
<body>
<div align="center">
	<h2>상품 선택</h2>
	<hr>
	<%= session.getAttribute("username") %>님 환영합니다 !
	<hr>
	<form name="form1" method="post" action="add.jsp">
		<select name="product">
			<option>사과</option>
			<option>딸기</option>
			<option>포도</option>
			<option>복숭아</option>
			<option>수박</option>
		</select>
		<input type="submit" value="추가">
	</form>
	<p>
	<a href="checkOut.jsp">계산</a>
</div>
</body>
</html>
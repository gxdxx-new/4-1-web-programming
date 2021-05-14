<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<h2>request 테스트 결과 - 1</h2>
	<hr>
	<table border=1>
		<tr>
			<td>이름</td>
			<td><%= request.getParameter("username") %></td>
		</tr>
		<tr>
			<td>직업</td>
			<td><%= request.getParameter("job") %></td>
		</tr>
		<tr>
			<td>관심분야</td>
			<td>
				<%
					String favorites[] = request.getParameterValues("favorite");
				
					for (String favorite : favorites) {
						out.println(favorite + "<br>");
					}
				%>
			</td>
		</tr>
	</table>
	<hr>
	<h2>request 테스트 결과 - 2</h2>
	<table>
		<tr>
			<td>
				1. 클라이언트 주소 : <%= request.getRemoteAddr() %><br>
				2. 요청 메시지 : <%= request.getMethod() %><br>
				<%
					Cookie cookie[] = request.getCookies();
				%>
				3. <%= cookie[0].getName() %>에 저장된 쿠키 값 : <%= cookie[0].getValue() %><br>
				4. 프로토콜 : <%= request.getProtocol() %>
			</td>
		</tr>
	</table>
</div>

</body>
</html>
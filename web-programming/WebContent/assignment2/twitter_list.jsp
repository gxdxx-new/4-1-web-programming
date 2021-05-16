<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch06 : twitter_list.jsp</title>
<%
	request.setCharacterEncoding("utf-8");
	String username = request.getParameter("username");
	String sessionName = (String)session.getAttribute("username");
	if(sessionName == null || sessionName.isEmpty()) {
		session.setAttribute("username", username);
	}
%>
</head>
<body>
	<div align="center">
		<h2>My Simple Twitter!!</h2>
		<hr>
		<table>
			<tr>
				<td>
					@<%=(String)session.getAttribute("username")%>
				</td>
				<td>
					<form name="form1" method="post" action="tweet.jsp">
						<input type="text" name="tweet">
						<input type="hidden" name="username" value="<%=session.getAttribute("username")%>">
						<input type="submit" value="Tweet">
					</form>
				</td>
			</tr>
		</table>
		<hr>
		<%
			ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("msgs");
			if(msgs != null) {
				out.println("<ul>");
				for(String msg : msgs) {
					out.println("<li>"+msg+"</li>");
				}
				out.println("</ul>");
			}
		%>
	</div>
</body>
</html>
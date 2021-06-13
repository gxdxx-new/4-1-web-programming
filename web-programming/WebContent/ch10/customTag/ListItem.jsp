<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2>태그 파일 예제 - ItemTagTest</h2>
		<hr>
		<tags:item bgcolor="yellow" border="5">상품 목록</tags:item>
		<p>
		<hr>
		<tags:print/>
	</div>
</body>
</html>
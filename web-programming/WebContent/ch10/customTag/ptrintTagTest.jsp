<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2>태그 파일 예제 - PrintTagTest</h2>
		<hr>
		<I><mytag:print/></I>	<!-- /WEB-INF/tags/print.tag 파일이 실행됨 -->
	</div>
</body>
</html>
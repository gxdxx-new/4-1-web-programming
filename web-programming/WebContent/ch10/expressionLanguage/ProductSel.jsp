<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2>표현 언어 예제 - 상품 선택</h2>
		<hr>
		<ol>
			<li>선택한 상품은 ${param.sel}</li>
			<li>num1 + num2 = ${product.num1 + product.num2 }</li>	<!-- session scope의 bean으로 product 사용 가능 -->
		</ol>
	</div>
</body>
</html>
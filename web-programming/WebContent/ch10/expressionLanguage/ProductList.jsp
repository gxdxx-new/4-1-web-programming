<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="product" class="webProgramming.ch10.Product" scope="session"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2>표현 언어 예제 - 상품 목록</h2>
		<hr>
		<form name=form1 action="ProductSel.jsp" method="post">
			<select name="sel">
				<%
					for(String item: product.getProductList())
						out.println("<option>"+item+"</option>");
				%>
			</select>
			<input type="submit" value="선택">
		</form>
	</div>
</body>
</html>
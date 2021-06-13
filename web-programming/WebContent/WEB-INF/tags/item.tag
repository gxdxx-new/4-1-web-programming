<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>
<%@ attribute name="border" %>
<%@ attribute name="bgcolor" %>

<jsp:useBean id="product" class="webProgramming.ch10.Product"/>

<h2><jsp:doBody/></h2>	<!-- tag body가 들어감(상품목록) -->
<table border="${border}" bgcolor="${bgcolor}" width="150">
	<%
		for(String item: product.getProductList())
			out.println("<tr><td>"+item+"</td></tr>");
	%>
</table>
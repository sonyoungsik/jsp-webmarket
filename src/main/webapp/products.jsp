<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<jsp:useBean id="repository" class="dao.ProductRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
<jsp:include page="menu.jsp" />

<div class="p-5 bg-secondary text-white text-white">
    <div class ="container">
        <h1 class="display-3">상품목록</h1>
    </div>
</div>

	<%
	//ProductRepository repository = new ProductRepository();
	List<Product> products = repository.getAllProducts();
		
	%>
	
	<div class="container">
    <div class="row text-center">
    <%
    for(Product product : products){
    %>
            <div class="col-md-4">
            <h3><%= product.getName() %></h3>
            <p><%= product.getDescription() %></p>
            <p><%= product.getUnitPrice() %></p>
            </div>
    
    <%
    }
    %>	
        <!-- <div class="col-md-4">1</div>
    	<div class="col-md-4">2</div>
        <div class="col-md-4">3</div>
     -->
     </div>
</div>

<jsp:include page="footer.jsp" />

</body>

</html>
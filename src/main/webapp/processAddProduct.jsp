<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

request.setCharacterEncoding("UTF-8");

String productId = request.getParameter("productId");
String name = request.getParameter("name");
int unitPrice = Integer.parseInt(request.getParameter("unitPrice"));
String description = request.getParameter("description");

Product newProduct = new Product(productId, name, unitPrice);

newProduct.setDescription(description);

ProductRepository repository = ProductRepository.getInstance();

repository.addProduct(newProduct);

response.sendRedirect("products.jsp");
%>
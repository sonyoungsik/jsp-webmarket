<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import = "java.util.Date" %>
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
<title>welcome.jsp</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</head>

<body>

<jsp:include page="menu.jsp" />

<%! String greeting = "Welcome to Web Shopping Mall";
String tagline = "Welcome to Web Market!"; %>

<div class="p-5 bg-secondary text-white text-white">
    <div class ="container">
        <h1 class="text-center display-3"><%= greeting %></h1>
    </div>
</div>

<div class="container">
    <div class="text-center">
        <h3 class="p-3"><%= tagline %></h3>
        <%
        Date today = new Date();
        
        SimpleDateFormat format = new SimpleDateFormat("hh:mm:ss a");
        
        out.println("현재 접속 시간 : " + format.format(today));
        %>
	</div>
    <hr>
</div>

<jsp:include page="footer.jsp"></jsp:include>

</body>

</html>
<%@page import="java.util.ArrayList"%>
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

<%! String greeting = "웹 쇼핑몰에 오신 것을 환영합니다.";
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
        
        //1초에 한번씩 새로고침 할 때 사용하는 문법입니다...
        response.setIntHeader("Refresh", 1);
        
        Date today = new Date();
        
        SimpleDateFormat format = new SimpleDateFormat("hh:mm:ss a");
        
        out.println("현재 접속 시간 : " + format.format(today));
        
      /*   session.setAttribute("name", "손영식");
        session.setAttribute("age", 23);
        
        List<String> foods = new ArrayList<>();
        
        foods.add("라면");
        foods.add("탕수육");
        foods.add("짜장면");
        
        session.setAttribute("food", foods);
        session.setMaxInactiveInterval(5); */
        
        %>
	</div>
    <hr>
</div>

<jsp:include page="footer.jsp" />

</body>

</html>
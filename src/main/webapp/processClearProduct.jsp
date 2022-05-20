<%@page import="org.apache.catalina.startup.ClassLoaderFactory.Repository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.ProductRepository" %>
<%@ page import="dto.Product"%>

<%
ProductRepository repository = ProductRepository.getInstance();

repository.clearProduct();

response.sendRedirect("welcome.jsp");
%>
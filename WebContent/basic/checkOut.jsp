<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check out</title>
</HEAD>
<body>
<div align="center">
<H2>Check Out</H2>
Selected products
<HR>
<%
	List<String> list = (List<String>)session.getAttribute("productlist");
	if(list == null) {
		out.println("Your cart is empty!!");
	}
	else {
		for(String productname:list) {
			out.println(productname+"<BR>");
		}
	}
%>
</div>
</body>
</html>
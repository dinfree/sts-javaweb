<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>


<jsp:useBean id="productlist" class="java.util.ArrayList<>" scope="session"/>
<%
	String productname = request.getParameter("product");
	productlist.add(productname);
%>

<script>
	alert("<%=productname %> added to cart !!");
	history.go(-1);
</script>
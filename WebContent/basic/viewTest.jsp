<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Test</title>
</head>
<body>
<h2>Product List</h2>
User Name : ${user}
<hr>
<ul>
<c:forEach var="p" items="${products}" varStatus="s">
<li>[${s.count}] ${p}</li>
</c:forEach>
</ul>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/inc_header.html" %>
<title>News Desk</title>
</head>
   <body>
   <div class="container mt-5">
    <h2>News List</h2>
    <hr>
    <ul class="list-group">
		<c:forEach var="i" items="${newslist}" varStatus="status">
		  <li class="list-group-item list-group-item-action"><a href="news.nhn?action=view&aid=${i.aid}">[${status.count}] ${i.title}, ${i.date}</a>
		</c:forEach>
	</ul>
	</div>
</body>
</html>
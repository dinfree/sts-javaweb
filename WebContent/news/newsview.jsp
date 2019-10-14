<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/common/inc_header.html" %>
<title>News Desk</title>
</head>
   <body>
   <div class="container">
    <h2>${news.title}</h2>
    <hr>
    <div class="card" style="width:600px">
	    <img class="card-img-top" src="${news.img}">
	    <div class="card-body">
	    	<h4 class="card-title">Date: ${news.date}</h4>
	    	<p class="card-text">Content: ${news.content}</p>
	    </div>
    </div>
    <hr>
    <a href="javascript:history.go(-1)" class="btn btn-primary"><< Back</a>
    
    </div>
    </body>
</html>
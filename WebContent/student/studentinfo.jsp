<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dinfree.javaweb.student.Student"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Information</title>
</head>
   <body>
    <% 
        if (request.getAttribute("student") != null) {
            Student student = (Student) request.getAttribute("student");
    %>
  
    <h1>Student Record</h1>
    <hr>
    <ul>
	    <li>ID: <%= student.getId()%></li>
	    <li>Name: <%= student.getName()%></li>
	    <li>Department: <%= student.getDept()%></li>
    </ul>
             
    <% 
        } else { 
    %>
 
    <h1>No student record found.</h1>
          
    <% } %>   
    </body>
</html>
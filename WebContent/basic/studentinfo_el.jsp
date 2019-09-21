<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dinfree.javaweb.basic.Student"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Information</title>
</head>
   <body>
  
    <h1>Student Record</h1>
    <div>ID: ${student.id}</div>
    <div>First Name: ${student.name}</div>
    <div>Last Name: ${student.dept}</div>
                   
    </body>
</html>
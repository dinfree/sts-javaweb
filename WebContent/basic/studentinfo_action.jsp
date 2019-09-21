<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Information</title>
</head> 
   <body>
	<jsp:useBean id="student" class="com.dinfree.javaweb.basic.Student" scope="request"/>

    <h1>Student Record</h1>
    <div>ID: <%= student.getId()%></div>
    <div>First Name: <%= student.getName()%></div>
    <div>Last Name: <%= student.getDept()%></div>
    </body>
</html>
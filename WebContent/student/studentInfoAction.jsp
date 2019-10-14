<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Information</title>
</head> 
   <body>
	<jsp:useBean id="student" class="com.dinfree.javaweb.student.Student" scope="request"/>

    <h1>Student Record</h1>
    <hr>
    <ul>
	    <li>ID: <%= student.getId()%></li>
	    <li>Name: <%= student.getName()%></li>
	    <li>Department: <%= student.getDept()%></li>
    </ul>
    </body>
</html>
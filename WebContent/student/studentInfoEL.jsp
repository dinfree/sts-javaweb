<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Information</title>
</head>
   <body>
  
    <h1>Student Record</h1>
    <hr>
    <ul>
	    <li>ID: ${student.id}</li>
	    <li>First Name: ${student.name}</li>
	    <li>Last Name: ${student.dept}</li>
    </ul>                   
    </body>
</html>
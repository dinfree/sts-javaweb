<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dinfree.javaweb.basic.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="student" class="com.dinfree.javaweb.basic.Student" />
<jsp:setProperty name="student" property="*" />

<%
	StudentService studentService = new StudentService();
	studentService.getStudent(student.getId())
	.ifPresent(s -> request.setAttribute("student", s));
	
	pageContext.forward("/basic/studentinfo.jsp");
%>
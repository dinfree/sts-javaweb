<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="error.jsp"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<TITLE>ch05 :footer.jsp</TITLE></HEAD>
<BODY>
footer.jsp 에서 출력한  메시지 입니다.
<HR>
<%= request.getParameter("email") %>,
<%= request.getParameter("tel") %>

</BODY>
</HTML>
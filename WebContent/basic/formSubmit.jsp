<%@ page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*, java.util.stream.*" %>
    
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Result</title>
</head>
<body>
<div align="center">
<H2>Form Submit Results</H2>
<HR> 

<table border=1 cellspacing="1" cellpadding="5">
<tr>
<td>Name</td>
<td><%=request.getParameter("username")%> </td>
<tr>
<td>Job</td>
<td><%=request.getParameter("job")%></td>
<tr>
<td>Favorites</td>
<td>
<%
	// getParameterValues 메서드를 이용해 "favorite" 로 설정된 form 의 체크박스 값들을 모두 읽어옴.
	String favorites[] = request.getParameterValues("favorite");
/*
	// 배열의 크기만큼 루프롤 돌면서 값을 출력함.
	for(int i=0; i<favorites.length;i++) {
		out.println(favorites[i]+"<BR>");
	}

	// java 8.0 코드	-> jsp 에서는 IOException 관련 문제로 사용하기 어려움.
	Stream<String> stream = Stream.of(favorites);
	stream.forEach(x -> out.println(x+"<br>"));

*/
	// java 5.0 코드
	for(String favorite: favorites) {
		out.println(favorite+"<br>");
	}

%>
</table>
<HR>
<H2>Request  Information</H2>
<table border=0><tr><td>
1. Client IP Address : <%= request.getRemoteAddr() %> <BR>
2. Request Method : <%= request.getMethod() %> <BR>
</td></tr>
</table>
 </div>
</html>
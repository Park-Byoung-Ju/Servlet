<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1.기본문법</h1>
	<!-- html 주석 -->
	<%--  JSP 주석 --%>
	
	<%-- 1부터 10까지의 합을 h3태그로 구성 --%>
	<%
		int sum = 0;
		for(int i = 1; i <= 10; i++){
			sum += i;
		}		
	%>
	<h3>1~10 합계 : <%= sum %></h3>
	
	<input type="text" value="<%= sum %>">
	<div><%= sum * 2 %></div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		// 이름 생년월일을 전달받고, 테이블에 기재
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		
		int year = Integer.parseInt(birthday.substring(0,4));
		
		int age = 2024 - year + 1;
	%>
	
	<table border="1">
		<tr>
			<th>이름</th>
			<td><%= name %></td>
		</tr>
		
		<tr>
			<th>나이</th>
			<td><%= age %></td>
		</tr>
	</table>
</body>
</html>
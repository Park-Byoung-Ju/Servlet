<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>이름, 생년월일 입력</h3>
	
	<form method="get" action="/JSP/ex/ex02.jsp">
		<div style="display:flex;">
			<div>
				<label>이름 : </label> <input type="text" name="name">
			</div>
			
			<div style="margin-left:5px;">
				<label>생년월일 : </label> <input type="text" name="birthday">
			</div>
			<input style="margin-left:5px;" type="submit" value="입력">
		</div>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>사용자 추가</h3>
	
	<form method="get" action="/db/user/create">
		<label>이름</label> <input type="text" name="name">
		<label>이메일</label>	<input type="text" name="email">
		<label>생년월일</label>	<input type="text" name="birthday">
		<!-- 브로노 마스 brno@email.com null -->
		<button type="submit">등록</button>
	</form>
</body>
</html>
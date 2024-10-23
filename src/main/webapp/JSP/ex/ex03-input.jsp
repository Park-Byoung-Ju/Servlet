<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<form method="post" action="/JSP/ex/ex03.jsp">
		<div style="display:flex;">	
			<label>닉네임 : </label>
			<input style="margin-left:5px;" type="text" name="nickname">
		</div>
		<div>
			<h3>좋아하는 동물 하나를 고르시오</h3>
			<label>강아지 <input type="radio" name="animal" value="dog"></label>
			<label>고양이 <input type="radio" name="animal" value="cat"></label>
			<label>사자 <input type="radio" name="animal" value="lion"></label>
		</div>
			
		<div>
			<h3>좋아하는 과일</h3>
			<!-- 셀렉트 박스 -->
			<select name="fruit">
				<option value="banana">바나나</option>
				<option value="strawberry" selected>딸기</option>
				<option value="peach">복숭아</option>
			</select>
		</div>
		
		<div>
			<h3>좋아하는 음식을 모두 고르세요</h3>
			<div>
				<label>민트초코</label> <input type="checkbox" name="food" value="민트초코">
				<label>하와이안피자</label> <input type="checkbox" name="food" value="하와이안피자">
				<label>번데기</label> <input type="checkbox" name="food" value="번데기">
			</div>
		</div>
		<button style="margin-top:10px;" type="submit">입력</button>
	</form>
</body>
</html>
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
	/* request.setCharacterEncoding("utf-8"); */
	String nickname = request.getParameter("nickname");
	
	// 좋아하는 하나의 동물 일므을 전달 받고 html에 보여준다
	// 고양이 강아지 사자
	String animal = request.getParameter("animal");
	
	if(animal.equals("dog")){
		animal = "강아지";
	}else if(animal.equals("cat")){
		animal = "고양이";
	}else{
		animal = "사자";
	}
	
	// 좋아하는 과일 이름 하나를 전달 받고 html에 보여준다
	// 바나나, 딸기, 복숭아
	String fruit = request.getParameter("fruit");
	
	if(fruit.equals("peach")){
		fruit = "복숭아";
	}else if(fruit.equals("banana")){
		fruit = "바나나";
	}else{
		fruit = "딸기";
	}
	
	// 좋아하는 음식을 모두 전달받고, html에 보여준다
	// 민트초코, 하와이안 피자, 번데기
	
	String[] food = request.getParameterValues("food");
	
	String textFood = "";
	
	for(int i = 0; i < food.length; i++){
		textFood += food[i] + " ";
	}

%>
	<h3><%= nickname %></h3>
	<h3><%= animal %></h3>
	<h3><%= fruit %></h3>
	<h3><%= textFood %></h3>
</body>
</html>
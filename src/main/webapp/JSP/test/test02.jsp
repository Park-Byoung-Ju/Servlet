<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.14.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<title>jsp 2번 문제</title>
</head>
<body>
	<div class="ml-5">
		<h2>BMI 측정 결과</h2>
	<%
		String heightString = request.getParameter("height");
		String weightString = request.getParameter("weight");
		
		int height = Integer.parseInt(heightString);
		int weight = Integer.parseInt(weightString);
		
		double bmi = (double)weight / ((height / 100.0) * (height / 100.0));
		String status = "";
		if(bmi < 18.5){
			status = "<span class=\"text-warnig\">저체중</span>";
		}else if(bmi < 25){
			status = "<span class=\"text-info\">정상</span>";
		}else if(bmi < 30){
			status = "<span class=\"text-warning\">과체중</span>";
		}else if(bmi >= 30){
			status = "<span class=\"text-danger\">비만</span>";
		}
	%>
		<div class="display-4">당신은 <%= status %> 입니다.</div>
		<div><small>BMI 수치 : <%= bmi %></small></div>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/ui/1.14.0/jquery-ui.js"></script>
	
</body>
</html>
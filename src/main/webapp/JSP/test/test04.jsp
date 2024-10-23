<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.14.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<body>
<%
	String calculation = request.getParameter("calculation");
	
	int number1 = Integer.parseInt(request.getParameter("number1"));
	int number2 = Integer.parseInt(request.getParameter("number2"));
	
	double calculate = 0;
	
	if(calculation.equals("plus")){
		calculate = number1 + number2;
		calculation = "+";
	}else if(calculation.equals("minus")){
		calculate = number1 - number2;
		calculation = "-";
	}else if(calculation.equals("division")){
		calculate = number1 / number2;
		calculation = "/";
	}else{
		calculate = number1 * number2;
		calculation = "X";
	}
	
	String result = number1 + " " + calculation + " " + number2 + " = <span class=\"text-primary\">" + calculate + "</span>";
	
%>
	<div class="mt-3 ml-5">
		<h1>사칙연산 결과</h1>
		<div class="display-4"><%= result %></div>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

</body>
</html>
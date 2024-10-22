<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.14.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<title>jsp 3번 문제</title>
</head>
<body>
	<%
		String status = request.getParameter("status");
	
		Date now = new Date();
		String formatData ="";
		String statusText = "";
		
		if(status.equals("time")){
			formatData = "hh시 mm분 ss초";
			statusText = "현재 시간";
		}else if(status.equals("day")){
			formatData = "yyyy년 MM월 dd일";
			statusText = "오늘 날짜";
			/* SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일"); */
			/* dateText = formatter.format(now); */
		}
		
		SimpleDateFormat formatter = new SimpleDateFormat(formatData);
		String dateText = formatter.format(now);
		String text = statusText + " " + dateText;
	%>
	
	<div class="ml-5 mt-3 display-4"><%= text %></div>

	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/ui/1.14.0/jquery-ui.js"></script>

</body>
</html>
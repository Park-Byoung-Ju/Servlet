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
	/* 1cm = (1 / 30.48) 피트
	1인치 = 2.54cm
	1야드 = 91.44cm */
	
	double cm = Double.parseDouble(request.getParameter("cm"));
	
	String[] length = request.getParameterValues("length");
	
	String result = "";
	for(int i = 0; i < length.length; i++){
		
		if(length[i].equals("inch")){
			double inch = cm / 2.54;
			result += "<div>" + inch+ "(inch)" + "</div>";
		}else if(length[i].equals("feet")){
			double feet = cm / 30.48;
			result += "<div>" + feet+ "(ft)" + "</div>";
		}else if(length[i].equals("yard")){
			double yard = cm / 91.44;
			result += "<div>" + yard+ "(yd)" + "</div>";
		}else{
			/* meter */	
			double meter = cm / 100;
			result += "<div>" + meter + "(meter)" + "</div>";
		}
	}
%>
	<div>
		<h3>수치 변환</h3>
		<div><%= cm %>cm</div>
		
		<hr>
		
		<div>
			<%= result %>
		</div>
		
	</div>

</body>
</html>
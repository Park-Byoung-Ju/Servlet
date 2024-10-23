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
	
	<div class="ml-5 mt-3">
		<h2>길이 변환</h2>
		
		<form method="post" action="/JSP/test/test05.jsp">
			<div>
				<input type="text" name="cm"><label class="ml-1">cm</label>
			</div>
			
			<div>
				<label>인치 <input type="checkbox" name="length" value="inch"></label>
				<label>야드 <input type="checkbox" name="length" value="yard"></label>
				<label>피트 <input type="checkbox" name="length" value="feet"></label>
				<lable>미터 <input type="checkbox" name="length" value="meter"></lable>
			</div>
			<button type="submit" class="btn bg-success text-white">변환</button>
		</form>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.14.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<title>JSP 7번 input</title>
</head>
<body>
	<div class="ml-5 mt-3">
		<h2>메뉴검색</h2>
		<div>
			<form method="get" action="/JSP/test/test07.jsp">
				<div class="d-flex align-items-end">
					<input class="form-control w-25" type="text" name="menu" id="menu">
					<label class="ml-2"><input type="checkbox" name="check" value="4"> 4점 이하 제외</label>			
				</div>
				<button id="btn" class="btn bg-success text-white mt-3">검색</button>
			</form>
		</div>
	</div>
	
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

<script>
	$(document).ready(function(){
		$("#btn").on("click", function(){
			let menu = $("menu").val();
			
			if(menu.length == 0){
				alert("메뉴를 입력해주세요");
				return false;
			}
		});
	});
</script>
</body>
</html>
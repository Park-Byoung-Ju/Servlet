<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.14.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<title>즐겨찾기 추가</title>
</head>
<body>
	<div class="mt-5 ml-5">
		<h3>즐겨찾기 추가</h3>
		<form method="get" action="/db/test/test02Insert">
			<div class="mt-3">
				<label>사이트명</label>
				<input class="form-control col-3 mt-2" type="text" name="name" id="name">
				<label class="mt-2">사이트 주소</label>
				<input class="form-control col-5 mt-2" type="text" name="url" id="url">
			</div>
			<button class="btn btn-success mt-3" id="btn" type="submit">추가</button>
		</form>
		<a class="mt-3" href="/db/test/test02Created">db table 생성하기</a>
	</div>
	
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script>
	$(document).ready(function(){
		$("#btn").on("click", function(){
			let name = $("#name").val();
			let url = $("#url").val();
			
			if(name.length < 1){
				alert("이름을 입력해주세요");
				return false;
			}
			
			if(url.length < 1){
				alert("주소를 입력해주세요");
				return false;
			}
		});
	});
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.14.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<link rel="stylesheet" href="base.css">
<link rel="stylesheet" href="register.css">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
		<div class="background-hong">
			<header class="text-center">
				<div class="text-white font-logo">HONG당무 마켓</div>
			</header>
			
			<nav>
				<ul class="nav nav-fill">
					<li class="nav-item"><a class="text-white nav-link" href="/db/market/main.jsp">리스트</a></li>
					<li class="nav-item"><a class="text-white nav-link" href="/db/market/register.jsp">물건 올리기</a></li>
					<li class="nav-item"><a class="text-white nav-link" href="#">마이 페이지</a></li>
				</ul>
			</nav>
		</div>
		
		<section>
			<div>
				<div id="info">물건 올리기</div>
				
				<div id="main" class="mt-2">
					<form method="post" action="/db/market/marketInsert">
						<div class="d-flex">
							<div class="col-3 form-group">
								<select class="form-control" id="nickname" name="nickname">
									<option selected>--아이디 선택--</option>
									<option value="마로비">마로비</option>
									<option value="아메리카노">아메리카노</option>
									<option value="동네주민">동네주민</option>
									<option value="네고왕">네고왕</option>
									<option value="하구루">하구루</option>
								</select>
							</div>
							
							
							<div class="col-6">
								<input id="title" name="title" class="form-control w-75" type="text" placeholder="제목">
							</div>
							
							<div class="input-group col-3">
								<input id="price" name="price" class="form-control" type="text" placeholder="가격">
								<div class="input-group-append">
									<span class="input-group-text group-text">원</span>
								</div>
							</div>
						</div>
						
						<div class="mt-3">
							<textarea name="description" id="description" class="form-control" rows="6"></textarea>
						</div>
						
						<div class="input-group mt-2">
							<div class="input-group-prepend">
								<span class="input-group-text group-text">이미지url</span>
							</div>
							<input name="imgUrl" id="imgUrl" class="form-control" type="text">
						</div>
						
						<button type="submit" id="bg-url-btn" class="mt-2 btn text-white w-100">저장</button>
					</form>
				</div>
			</div>
		</section>

		
		<footer>
		
		</footer>
	</div>
	
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

<script>
	$(document).ready(function(){
		$("#bg-url-btn").on("click", function(){
			let nickname = $("#nickname").val();
			let title = $("#title").val();
			let price = $("#price").val();
			let description = $("#description").val();
			
			if(nickname.length == "--아이디 선택--"){
				alert("닉네임을 선택해주세요");
				return false;
			}
			
			if(title.length == 0){
				alert("제목을 입력해주세요");
				return false;
			}
			
			if(price.length == 0){
				alert("가격을 입력해주세요");
				return false;
			}
			
			if(description.length == 0){
				alert("설명을 입력해주세요");
				return false;
			}
		});
	});
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.marondal.common.MysqlService" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.14.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<link rel="stylesheet" href="main.css">
<link rel="stylesheet" href="base.css">
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
			<div class="d-flex flex-style">
<%
			MysqlService mysqlService = MysqlService.getInstance();
			mysqlService.connect();
			
			String query = "SELECT * FROM `used_goods` LIMIT 0,6;";
			
			List<Map<String, Object>> goodsList = mysqlService.select(query);
			
			for(Map<String, Object> goodsMap : goodsList){
				query = "SELECT * FROM `seller` WHERE `id`=" + goodsMap.get("sellerId")+ ";";
				List<Map<String, Object>> userList = mysqlService.select(query);
				Map<String, Object> userMap = userList.get(0);
%>				
				<div class="border border-danger p-3 item-box">
					<div class="imgBox"><img class="imgSize" src="<%= goodsMap.get("image") %>"></div>
					<div class="text-secondary price-text"><%= goodsMap.get("price") %></div>
					<div><%= userMap.get("nickname") %></div>
				</div>
<%
			}
			mysqlService.disconnect();
%>
			</div>
		</section>
		
		<footer class="mt-5">
			<div class="small text-center text-secondary">Copyright 2019. HONG ALL Rights Reserved</div>
		</footer>
	</div>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

</body>
</html>
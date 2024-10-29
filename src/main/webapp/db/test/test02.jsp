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

<title>Test02 리스트</title>
</head>
<body>
<%
	MysqlService mysqlService = new MysqlService();
	mysqlService.connect();
	
	List<Map<String, Object>> urlList = mysqlService.select("SELECT * FROM `bookMark` ORDER BY `id`;");
	
	mysqlService.disconnect();
	
	
%>
	<div class="w-75 ml-5 mt-3">
	
		<table class="table text-center">
			<thead>
				<tr>
					<th class="col-3">이름</th>
					<th class="col-6">주소</th>
					<th class="col-3">글 삭제</th>
				</tr>
			</thead>
			
			<tbody>
<%
		if(urlList != null){
			for(Map<String, Object> urlMap : urlList){
%>		
				<tr>
					<td><%= urlMap.get("name") %></td>
					<td><a href="<%= urlMap.get("url") %>" target="_blank"><%= urlMap.get("url") %></a></td>
					<td><a class="btn btn-danger" href="/db/test/test02Delete?id=<%= urlMap.get("id") %>">삭제하기</a></td>
				</tr>
<%		
			}
		}
%>
				<tr>
					<td></td>
					<td></td>
					<td><a class="btn btn-info" href="/db/test/test02-input.jsp">추가하기</a></td>
				</tr>
			</tbody>
		</table>
	</div>
	

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
		
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.14.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<link rel="stylesheet" href="test09.css">
<title>test09</title>
</head>
<body>
<%
    List<Map<String, String>> list = new ArrayList<>();
    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
    list.add(map);
    
    String category = request.getParameter("category");
    if(category != null){
	    if(category.equals("groundWave")){
	    	category = "지상파";
	    }else if(category.equals("drama")){
	    	category = "드라마";
	    }else if(category.equals("entertainment")){
	    	category = "예능";
	    }else if(category.equals("movie")){
	    	category = "영화";
	    }else if(category.equals("sport")){
	    	category = "스포츠";
	    }
    }
    	
    
%>
	<div class="wrap">
		<header class="text-center">
			<div class="text-danger display-4"><b>Sk broadband IPTV</b></div>
		</header>
	
		<nav class="bg-danger mt-4">
			<ul class="nav nav-fill">
				<li class="nav-item"><a href="/JSP/test/test09.jsp" class="nav-link text-white">전체</a></li>
				<li class="nav-item"><a href="/JSP/test/test09.jsp?category=groundWave" class="nav-link text-white">지상파</a></li>
				<li class="nav-item"><a href="/JSP/test/test09.jsp?category=drama" class="nav-link text-white">드라마</a></li>
				<li class="nav-item"><a href="/JSP/test/test09.jsp?category=entertainment" class="nav-link text-white">예능</a></li>
				<li class="nav-item"><a href="/JSP/test/test09.jsp?category=movie" class="nav-link text-white">영화</a></li>
				<li class="nav-item"><a href="/JSP/test/test09.jsp?category=sport" class="nav-link text-white">스포츠</a></li>
			</ul>
		</nav>
		
		<section>
			<table class="table text-center">
				<thead>
					<tr>
						<th>채널</th>
						<th>채널명</th>
						<th>카테고리</th>
					</tr>
				</thead>
				
				<tbody>
				
<%			// ch name category
			for(Map<String, String> broadCastingMap : list){
				if(category == null || category.equals((String)broadCastingMap.get("category"))){
%>					<tr>
						<td><%= broadCastingMap.get("ch") %></td>
						<td><%= broadCastingMap.get("name") %></td>
						<td><%= broadCastingMap.get("category") %></td>
					</tr>
<%				}
			}
%>
				</tbody>
			</table>
		</section>
	</div>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

</body>
</html>
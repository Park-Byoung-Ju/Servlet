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

<link rel="stylesheet" href="test10.css">
<title>test10</title>
</head>
<body>
<%
//아이유 노래 리스트 
List<Map<String, Object>> musicList = new ArrayList<>();

Map<String, Object> musicInfo = new HashMap<>();
musicInfo.put("id", 1);
musicInfo.put("title", "팔레트");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 2);
musicInfo.put("title", "좋은날");
musicInfo.put("album", "Real");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
musicInfo.put("time", 233);
musicInfo.put("composer", "이민수");
musicInfo.put("lyricist", "김이나");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 3);
musicInfo.put("title", "밤편지");
musicInfo.put("album", "palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
musicInfo.put("time", 253);
musicInfo.put("composer", "제휘,김희원");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 4);
musicInfo.put("title", "삐삐");
musicInfo.put("album", "삐삐");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
musicInfo.put("time", 194);
musicInfo.put("composer", "이종훈");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 5);
musicInfo.put("title", "스물셋");
musicInfo.put("album", "CHAT-SHIRE");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
musicInfo.put("time", 194);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 6);
musicInfo.put("title", "Blueming");
musicInfo.put("album", "Love poem");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

	String idString = request.getParameter("id");
	String title = request.getParameter("title");
	
	int id = 0;
	if(idString != null){
		id = Integer.parseInt(idString);
	}

%>
	<div class="wrap">
		<header class="d-flex">
			<div class="text-success col-3"><h2>Melong</h2></div>
			
			<div class="col-9">
				<form method="get" action="">
					<div class="input-group w-50 ">
						<input class="form-control" type="text" name="title">
						<div class="input-group-append">
							<button class="btn bg-info text-white" type="submit">검색</button>
						</div>
					</div>
				</form>
			</div>
		</header>
		
		<nav class="mt-5">
			<div class="d-flex justify-content-start">
				<div class="menu-item"><a class="menu-text">멜롱차트</a></div>
				<div class="menu-item"><a class="menu-text">최신음악</a></div>
				<div class="menu-item"><a class="menu-text">장르음악</a></div>
				<div class="menu-item"><a class="menu-text">멜롱DJ</a></div>
				<div class="menu-item"><a class="menu-text">뮤직어워드</a></div>
			</div>
		</nav>
		
		<section class="mt-2">
			<h3>곡 정보</h3>
			<div class="border border-success d-flex p-3">		
<%
			for(Map<String, Object> info : musicList){				
				if(title != null && (title.equals((String)info.get("title"))) || (title == null && id == (int)info.get("id"))){
%>						<div class="col-3"><img class="w-100" src="<%= (String)info.get("thumbnail") %>"></div>
					
					<div class="col-9">
						<div class="display-4 color-gray"><%= (String)info.get("title") %></div>
						<div class="mt-3 text-success" id="singer-text"><%= (String)info.get("singer") %></div>
						
						<div class="d-flex w-25 color-gray pt-3">
							<div class="col-6">
								<div>앨범</div>
								<div>재생시간</div>
								<div>작곡가</div>
								<div>작사가</div>
							</div>
							
							<div class="col-6">
								<div><%= (String)info.get("title") %></div>
								<div><%= (int)info.get("time") / 60 + " : " + (int)info.get("time") % 60 %></div>
								<div><%= (String)info.get("composer") %></div>
								<div><%= (String)info.get("lyricist") %></div>
							</div>
						</div>
					</div>
<%					
				}
				
			}
%>
			</div>
			
			<article class="mt-3">
				<h3>가사</h3>
				<hr>
				<p>가사 정보 없음</p>
				<hr>
			</article>
			
		</section>
		
		<footer>
			<div class="color-gray" id="footer-size">Copyright 2021. melong All Rights Reserved</div>
		</footer>
	</div>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

</body>
</html>
package com.marondal.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
//		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 이름과 생년월일 을 전달 받고,
		// 이름과 나이를 정리한 html 을 구성한다.
		
		// request에 get 데이터가 포함 되어있다.
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday"); 
		
		String yearString = birthday.substring(0, 4);
		
		int year = Integer.parseInt(yearString);
		
		int age = 2024 - year + 1;
		
		
		out.println("{\"name\" : \" " + name + "\", \"age\" : " + age + "}");
//		out.println("<html>"
//				+ "	<head>"
//				+ "		<title>나이 구하기</title>"
//				+ "	</head>"
//				+ ""
//				+ "	<body>"
//				+ "		<h3>이름 : " + name + "</h3>"
//				+ "		<h3>나이 : " + age + "</h3>"
//				+ "	</body>"
//				+ "</html>");
		
		
	}

}

package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class Test05Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String numberString = request.getParameter("number");
		
		int number = Integer.parseInt(numberString);
		
		out.println(""
				+ "<html>\n"
				+ "	<head>\n"
				+ "		<title>구구단 링크</title>\n"
				+ "	</head>\n\n"
				+ "	<body>\n"
				+ "		<p>" + number + "단</p>\n"
				+ "		<ul>\n");
		
		for(int i = 1; i <= 9; i++) {
			
			out.println("			<li>" + number + " X " + i + " = " + (number * i) + "</li>\n");
			
		}
		
		out.println("		</ul>\n"
				+ "		<div>\n"
				+ "			<a href=\"/servlet/test/test05.html\">뒤로 가기</a>\n"
				+ "		</div>\n"
				+ "	</body>\n"
				+ "</html>\n");
	
	}
}

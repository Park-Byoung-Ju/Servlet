package com.marondal.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class Ex05Controller extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
//		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
//		request.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		
		String yearString = birthday.substring(0, 4);
		int year = Integer.parseInt(yearString);
		
		int age = 2024 - year + 1;
		
		out.println(""
				+ "<html>"
				+ "	<head>"
				+ "		<title>ex04</title>"
				+ "	</head>"
				+ ""
				+ "	<body>");
		
		out.println(""
				+ "		<h3>이름 : " + name + "</h3> <h3>나이 : " + age + "</h3>");
		
		out.println(""
				+ "	</body>"
				+ "</html>");
	}
}

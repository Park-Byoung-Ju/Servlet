package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
	
		String name = request.getParameter("name");
		String text = request.getParameter("text");
		
		out.println("<html>"
				+ "	<head>"
				+ "		<title>Test09</title>"
				+ "	</head>"
				+ ""
				+ "	<body>"
				+ "		<h2>" + name + "님 지원이 완료 되었습니다.</h2>"
				+ "		<hr>"
				+ "		<p>" + text + "</p>"
				+ "	</body>"
				+ "</html>");
	}

}

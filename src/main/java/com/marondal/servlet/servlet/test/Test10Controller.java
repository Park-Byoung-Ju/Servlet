package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet{
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 필터 사용
//		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
//		request.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.println(""
				+ "<html>"
				+ "	<head>"
				+ "		<title>test10번 로그인 결과</title>"
				+ "	</head>"
				+ "	<body>");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		if(!id.equals(userMap.get("id"))) {
			out.println(""
					+ "<div><b>아이디</b>, 비밀번호가 일치하지 않습니다.</div>" 
					// 아이디,비밀번호 중 무엇이 틀렸는지 알려주면 x
					+ "	</body>"
					+ "</html>");
			return ;
		}
		
		if(!password.equals(userMap.get("password"))) {
			out.println(""
					+ "<div>아이디, <b>비밀번호</b>가 일치하지 않습니다.</div>"
					+ "	</body>"
					+ "</html>");
			
			return ;
		}
		
		out.println("		<h2>" + userMap.get("name") + "님 환영 합니다.");
		
		
	}
}

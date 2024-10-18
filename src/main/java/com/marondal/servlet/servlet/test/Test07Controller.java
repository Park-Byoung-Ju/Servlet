package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		out.println(""
				+ "<html>\n"
				+ "	<head>\n"
				+ "		<title>주문하기</title>\n"
				+ "	</head>\n"
				+ "\n"
				+ "	<body>\n");
		
		String address = request.getParameter("address");
		String credit = request.getParameter("credit");
		String priceString = request.getParameter("price");
		
		int price = Integer.parseInt(priceString);
		
		boolean isTrue = address.contains("서울");
		if(!isTrue) {
			out.println("		<h3>" +address + "는 배달 불가 지역입니다.</h3>"
					+ "	</body>\n"
					+ "</html>\n");
			return ;
		}
		
		credit = credit.replaceAll(" ", ""); // 공백제거
		
		if(credit.contains("신한")) {
			out.println("		<h3>신한카드는 결제 불가 카드 입니다.</h3>\n"
					+ "	</body>\n"
					+ "</html>");
			return ;
		}
		
		out.println(""
				+ "		<h3>" + address + " 배달 준비중</h3>\n"
				+ "		<hr>"
				+ "		<p>결제금액 : " + price + "원\n"
				+ "	</body>\n"
				+ "</html>");
	}
}

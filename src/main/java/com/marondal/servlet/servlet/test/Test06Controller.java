package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		String number1String = request.getParameter("number1");
		String number2String = request.getParameter("number2");
		
		int number1 = Integer.parseInt(number1String);
		int number2 = Integer.parseInt(number2String);
		
		out.println("{"
				+ "\"addtion\" : " + calculateAddtion(number1, number2) + ","
				+ "\"subtraction\" : " + calculateSubtraction(number1, number2) + ","
				+ "\"multiplication\" : " + calculateMultiplication(number1, number2) + ","
				+ "\"division\" : " + calculateDivision(number1, number2) + ""
				+ "}");
		
		
		
		
	}
	
	public int calculateAddtion(int number1, int number2) {
		return number1 + number2;
	}
	
	public int calculateSubtraction(int number1, int number2) {
		return number1 - number2;
	}
	
	public int calculateMultiplication(int number1, int number2) {
		return number1 * number2;
	}
	
	public int calculateDivision(int number1 , int number2) { // 몫만 계산하는 것으로 추정되어 계산
		return number1 / number2;
	}
	
//	public double calculateDivision(int number1, int number2) {
//		return number1 / number2;
//	}
}

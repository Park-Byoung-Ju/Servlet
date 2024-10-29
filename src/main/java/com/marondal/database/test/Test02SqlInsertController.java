package com.marondal.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/test/test02Insert")
public class Test02SqlInsertController extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");		
		
		MysqlService mysqlService = new MysqlService();
		mysqlService.connect();
		
		String query = "INSERT INTO `bookMark`\r\n"
				+ "(`name`, `url`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name + "', '" + url + "');";
		
		int result = mysqlService.update(query);
		
		if(result == 0) {
			response.sendRedirect("/db/test/test02-input.jsp");
		}else {
			response.sendRedirect("/db/test/test02.jsp");
		}
		
	}
}

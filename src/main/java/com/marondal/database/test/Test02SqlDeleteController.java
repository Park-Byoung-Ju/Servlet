package com.marondal.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/test/test02Delete")
public class Test02SqlDeleteController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		
		MysqlService mysqlService = new MysqlService();
		mysqlService.connect();
		
		String query = "DELETE FROM `bookMark` WHERE `id` = " + id + ";";
		
		int result = mysqlService.update(query);
		
		mysqlService.disconnect();
		
		try {
			response.sendRedirect("/db/test/test02.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

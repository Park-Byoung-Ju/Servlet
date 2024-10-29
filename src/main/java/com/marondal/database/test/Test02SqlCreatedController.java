package com.marondal.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/test/test02Created")
public class Test02SqlCreatedController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		response.setContentType("text/plain");
		
		MysqlService mysqlService = new MysqlService();
		mysqlService.connect();
		
		String query = "CREATE TABLE `bookMark` (\r\n"
				+ "	`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\r\n"
				+ "    `name` VARCHAR(16) NOT NULL,\r\n"
				+ "    `url` VARCHAR(256) NOT NULL,\r\n"
				+ "    `createdAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,\r\n"
				+ "    `updatedAt` TIMESTAMP DEFAULT CURRENT_TIMESTAMP\r\n"
				+ ")ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;";
		
		int result = mysqlService.createdTable(query);
		
		PrintWriter out = response.getWriter();
		
		out.println("결과 값 : " + result);
/*		
		if(result == 1) {
			out.println("성공");
		}else {
			out.println("실패");
		}
*/		
		mysqlService.disconnect();
		
		response.sendRedirect("/db/test/test02-input.jsp");
	}
}

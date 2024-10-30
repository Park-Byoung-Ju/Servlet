package com.marondal.database.market;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/market/marketInsert")
public class MarketInsertController extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		
		response.setContentType("text/plain");
		
		/* PrintWriter out = response.getWriter(); */
		
		
		String nickname = request.getParameter("nickname");
		String title = request.getParameter("title");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		String imgUrl = request.getParameter("imgUrl");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "SELECT * FROM `seller` WHERE `nickname` = '" + nickname + "';";
		/* out.println(query); */
		
		List<Map<String, Object>> userInfo = mysqlService.select(query);
		
		int userId = (int)userInfo.get(0).get("id");
		/* out.println("userId"); */
		
		query = "INSERT INTO `used_goods`\r\n"
				+ "(`sellerId`, `title`, `price`, `description`, `image`)\r\n"
				+ "VALUE\r\n"
				+ "(" + userId + ", '" + title + "', " + price + ", '" + description + "',";
	
		if(imgUrl == null) {
			query += null + ");";
		}else {
			query += "'" + imgUrl + "');";
		}
		
		/* out.println(query); */
		
		int count = mysqlService.update(query);
		
		/* out.println("count : " + count); */
		
		mysqlService.disconnect();
		
		try {
			response.sendRedirect("/db/market/main.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

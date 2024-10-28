package com.marondal.database.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/db/ex/ex01")
public class Ex01Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		// used_goods 테이블의 모든 행을 조회해서 결과를 response에 담기
		
		//database 접속
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// 접속 주소, 포트, 아이디, 비밀번호
			String url = "jdbc:mysql://localhost:3306/mega";
			int port = 50;
			String id = "root";
			String pw = "root";
			
			Connection connection = DriverManager.getConnection(url, id, pw);
			
			// 쿼리 수행
			// import : import java.sql.Statement; 3번쨰임
			Statement statement = connection.createStatement();
			
			ResultSet resultSet = statement.executeQuery("SELECT * FROM `used_goods`;");
			
			// iterator와 유사함
			// 쿼리 수행 결과 다루기
			while(resultSet.next()) {
			
				// String으로 받기
				String title = resultSet.getString("title");
				
				// int로 받기
				int price = resultSet.getInt("price");
				
				String description = resultSet.getString("description");
				
				out.println("제목 : " + title + ", 가격 : " + price + "원, 설명 : " + description);
			}
			
			/*
			 * String query = "INSERT INTO `used_goods`\r\n" +
			 * "(`sellerId`, `title`, `price`, `description`)\r\n" + "VALUE\r\n" +
			 * "(3, '고양이 간식 팝니다', 2000, '우리집 고양이가 안먹어서 팔아요');";
			 * 
			 * statement.close();
			 * 
			 * statement = connection.createStatement();
			 * 
			 * // insert는 결과값이 필요없기 때문에 실행된 행의 개수를 리턴해준다 int count =
			 * statement.executeUpdate(query);
			 * 
			 * out.println("삽입결과 : " + count);
			 */
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}

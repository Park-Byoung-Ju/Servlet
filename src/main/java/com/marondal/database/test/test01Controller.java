package com.marondal.database.test;

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

@WebServlet("/db/test/test01")
public class test01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			String url = "jdbc:mysql://localhost:3306/mega";
			String id = "root";
			String pw = "root";
			
			Connection connection = DriverManager.getConnection(url, id, pw);
			
			// 쿼리 수행
			// import : import java.sql.Statement; 3번쨰임
			Statement statement = connection.createStatement();
			
			// 출력 컬럼은 매물 주소, 면적, 타입 입니다.
//			address	area	type
			// id 기준 내림차순으로 10개만 출력하세요.
			ResultSet resultSet = statement.executeQuery("SELECT `realtorId`, `address`, `area`, `type` FROM `real_estate`"
					+ "ORDER BY `id` Desc LIMIT 10");
			
			while(resultSet.next()) {
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				
				out.println("매물 주소 : " + address + ", 면적 : " + area + ", 타입 : " + type);
				out.println("--------------------------------------------------------------------------------------------------------------------------------------------------------");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// 접속 주소, 포트, 아이디, 비밀번호
	}

}

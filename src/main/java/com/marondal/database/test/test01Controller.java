package com.marondal.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/test/test01")
public class Test01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = new MysqlService();
		mysqlService.connect();
/*		
		String query = "INSERT INTO `real_estate`\r\n"
				+ "(`realtorId`, `address`, `area`, `type`, `price`)\r\n"
				+ "VALUE\r\n"
				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000);";
		
		int count = mysqlService.update(query);
		
		out.println("실행 결과 : " + count);
*/
		// select
		String query = "SELECT `realtorId`, `address`, `area`, `type` FROM `real_estate` ORDER BY `id` Desc LIMIT 10";
		
		List<Map<String, Object>> realEstateList = mysqlService.select(query);
		
		for(Map<String, Object> realEstate : realEstateList) {
			String address = (String) realEstate.get("address");
			int area = (Integer)realEstate.get("area");
			
			out.println("매물 주소 : " + address + ", 면적 : " + area);
			out.println("----------------------------------------------------------------------------------------------------------"); 
		}
	 	
		
/*		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			String url = "jdbc:mysql://localhost:3306/mega";
			String id = "root";
			String pw = "root";
			
			Connection connection = DriverManager.getConnection(url, id, pw);
			
			// 쿼리 수행
			// import : import java.sql.Statement; 3번쨰임
			Statement statement = connection.createStatement();
			
*/
/*			
			String query = "INSERT INTO `real_estate`\r\n" +
			"(`realtorId`, `address`, `area`, `type`, `price`)\r\n" +
			"VALUE\r\n" + "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000);"; 
			  
			 // 출력 컬럼은
			//매물 주소, 면적, 타입 입니다. // address area type // id 기준 내림차순으로 10개만 출력하세요. 
			int count
			 = statement.executeUpdate(query);
			  
			out.println("------------------------"); out.println("삽입결과 : " + count);
			 
*/			
			
/*			String query = "SELECT `realtorId`, `address`, `area`, `type` FROM `real_estate`" +
			"ORDER BY `id` Desc LIMIT 10";
			  
			ResultSet resultSet = statement.executeQuery(query);
			  
			while(resultSet.next()) { String address = resultSet.getString("address");
				int area = resultSet.getInt("area"); String type =
			  	resultSet.getString("type");
			  
			  	out.println("매물 주소 : " + address + ", 면적 : " + area + ", 타입 : " + type);
			  	out.println("----------------------------------------------------------------------------------------------------------"); 
			}
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
*/		
		// 접속 주소, 포트, 아이디, 비밀번호
	}

}

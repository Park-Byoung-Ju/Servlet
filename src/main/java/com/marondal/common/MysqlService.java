package com.marondal.common;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class MysqlService {
	
	// 클래스를 설계하는 입장에서
	// 해당 클래스에 대한 객체 생성을 직접 관리하고,
	// 하나의 객체를 공유해서 사용하도록 구성한다.
	// Singleton pattern (Design pattern)
	private static MysqlService mysqlService = null;
	
	private Connection connection;
	
	// 자신 클래스에 대한 객체를 돌려주는 메소드
	// static : 객체 생성없이 사용하도록 하는 메소드, 멤버 변수
	public static MysqlService getInstance() {
		if(mysqlService == null) {
			
			mysqlService = new MysqlService();
			
		}
		
		return mysqlService;
	}
	
	// 접속 기능
	public void connect() {
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			String url = "jdbc:mysql://localhost:3306/mega";
			String id = "root";
			String pw = "root";
			
			connection = DriverManager.getConnection(url, id, pw);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	// 접속 해제 기능
	public void disconnect() {
		try {
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	// 조회 쿼리 수행 기능
	public List<Map<String, Object>> select(String query) {
		
		try {
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);

			
			ResultSetMetaData rsmd = resultSet.getMetaData();
			int columnCount = rsmd.getColumnCount();
			
			List<String> columnList = new ArrayList<>();
			
			for(int i = 1; i <= columnCount; i++) {
				columnList.add(rsmd.getColumnName(i));
			}
			
			
			List<Map<String, Object>> resultList = new ArrayList<>();
			
			while(resultSet.next()) {
				
				Map<String, Object> resultMap = new HashMap<>();
				
				for(String column : columnList) {
					Object value = resultSet.getObject(column);
					resultMap.put(column, value);
				}
				
				resultList.add(resultMap);
			}
			
			
			
			statement.close();
			return resultList;	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			return null;
		}
		
			
	}
	
	// 삽입, 수정, 삭제 쿼리 수행 기능
	public int update(String query) {
		
		int count;
		Statement statement;
		try {
			statement = connection.createStatement();
			count = statement.executeUpdate(query);
			statement.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			count = 0;
		}
		
		
		return count;
	}
	
	public int createdTable(String query) {
		try {
			Statement statement = connection.createStatement();
			
			statement.execute(query);
			
			statement.close();
			return 1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		
	}
}

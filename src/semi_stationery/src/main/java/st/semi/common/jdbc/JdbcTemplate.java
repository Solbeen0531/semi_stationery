package st.semi.common.jdbc;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JdbcTemplate {
	private static Connection conn = null;
	
	// Singleton패턴 Connection 객체가 많이 생성됨을 방지
		public static Connection getConnection() {
			Properties prop = new Properties();
			String currentPath = JdbcTemplate.class.getResource("./").getPath();
			try {
				prop.load(new FileReader(currentPath));
				// 1. driver 있다면 로딩함. // 없다면 ClassNotFoundException 오류 발생
				Class.forName("oracle.jdbc.driver.OracleDriver");
				// 2. Connection 객체 생성 // dbms와 연결
				conn = DriverManager.getConnection(prop.getProperty("jdbc.url"),prop.getProperty("jdbc.username"),prop.getProperty("jdbc.password"));
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (FileNotFoundException e1) {
				e1.printStackTrace();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
			try {
				// 1. driver 있다면 로딩함. // 없다면 ClassNotFoundException 오류 발생
				Class.forName("oracle.jdbc.driver.OracleDriver");
				// 2. Connection 객체 생성 // dbms와 연결
				conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:xe", "kh", "kh");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			if (conn != null) {
				System.out.println("DB 연결 성공");
			} else {
				System.out.println("!!!!!!!!!!!DB 연결 실패!!!!!!!!!!!!!!!!!");
			}
			return conn;
		}
	
	public static void close(Connection conn) {
		try {
			if (conn != null) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement stmt) {
		try {
			if (stmt != null) stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rset) {
		try {
			if (rset != null) rset.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void setAutoCommit(Connection conn, boolean auto) {
		try {
			if (conn != null) conn.setAutoCommit(auto);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void commit(Connection conn) {
		try {
			if (conn != null) conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection conn) {
		try {
			if (conn != null) conn.rollback();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

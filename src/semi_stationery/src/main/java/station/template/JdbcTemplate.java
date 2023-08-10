package station.template;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcTemplate {
	public static Connection getConnection() {
		Connection conn = null;
		
		
		
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

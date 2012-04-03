package ebay.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBconn {
	private static final String serverIp = "localhost";
	private static final String PortNo = "3306";
	private static final String databaseName = "ebay";
	private static final String USER_NAME = "root";
	private static final String PASSWORD = "password";
	private static boolean isEnteredGetConnectionFirstTime = true;
	private static int activeConnections=0 ;

	/* Get connection object */
	public static Connection getConnection() {
		Connection con = null;
		try {
			if (isEnteredGetConnectionFirstTime) {
				isEnteredGetConnectionFirstTime = false;
				try {
					Class.forName("com.mysql.jdbc.Driver");
				} catch (ClassNotFoundException ex) {

					System.out.println(ex.getMessage());
				}
			}
			String connectionUrl = "jdbc:mysql://" + serverIp + ":" + PortNo
					+ "/" + databaseName
					+ "?zeroDateTimeBehavior=convertToNull";
			con = DriverManager.getConnection(connectionUrl, USER_NAME,
					PASSWORD);
		} catch (SQLException ex) {

			System.out.println(ex.getMessage());
		}
		setActiveConnections(getActiveConnections() + 1);
		System.out.println("In DB added new conn; total connections:"
				+ getActiveConnections());
		return con;
	}

	
	/* Close connection */
	public void close(Connection connection) {
		// return;
		if (connection == null) {
			return;
		}
		try {
			if (connection.isClosed()) {
				connection = null;
			} else {
				try {
					connection.close();
					setActiveConnections(getActiveConnections() - 1);
					System.out.println("closing a conn; total conn:"
							+ getActiveConnections());
					connection = null;
				} catch (SQLException ex) {
					System.out.println(ex.getMessage());
				}
			}
		} catch (SQLException ex) {
			System.out.println(ex.getMessage());
		}
	}

	
	public void close(ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
				rs = null;
			} catch (SQLException ex) {
				System.out.println("Exception while closing result set");
			}
		}
	}

	public void close(PreparedStatement statement) {
		if (statement != null) {
			try {
				statement.close();
				statement = null;
			} catch (SQLException ex) {
				System.out.println("Exception while closing statement");
			}
		}
	}

	public void close(Statement statement) {
		if (statement != null) {
			try {
				statement.close();
				statement = null;
			} catch (SQLException ex) {
				System.out.println("Exception while closing statement");
			}
		}
	}
	

	public static void setActiveConnections(int activeConnections) {
		DBconn.activeConnections = activeConnections;
	}


	public static int getActiveConnections() {
		return activeConnections;
	}
	
	
}

package user.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import ebay.util.*;




public class LoginService {

	private DBconn dbconn = null;
	private Connection con = null;
	private PreparedStatement pst = null;
	private ResultSet resultSet1 = null;
	private String query1 = null;


	public int validateUser(String username,String password){
		int userId;
		try{
		
		
		query1 = "SELECT * FROM student_credentials WHERE username=? and password=?";
		con = DBconn.getConnection();
		pst = con.prepareStatement(query1);
		pst.setString(1, username);
		pst.setString(2, password);
		resultSet1 = pst.executeQuery();
		
		
		boolean records = resultSet1.next();
		if (!records) {
			userId = 0;
		}
		else {	
			userId = resultSet1.getInt("userid");
		}

	} catch (SQLException e) {
		System.out.println(e.getMessage());
		MyLog.myCatch("User.java",61, e);
		e.printStackTrace();
		userId = -1;
	} finally {
		dbconn.close(resultSet1);
		dbconn.close(pst);
		dbconn.close(con);
	}
	
	return userId;
}
}

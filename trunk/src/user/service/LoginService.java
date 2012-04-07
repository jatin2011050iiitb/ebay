package user.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import user.model.User;
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
		
		
		query1 = "SELECT * FROM userCredentials WHERE username=? and password=?";
		dbconn = new DBconn();
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
	
	public User populate(int userid) {
		User userbean = new User();
		System.out.println("In populate method");
		try {
			String query = "SELECT * FROM userinfo WHERE userId=?";

			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query);
			pst.setInt(1, userid);
			resultSet1 = pst.executeQuery();
			resultSet1.next();
			
			System.out.println("query is::: "+ query);
			
			System.out.println("First name is in populate-------"+ resultSet1.getString("fName") );
			userbean.setfName(resultSet1.getString("fName"));
			userbean.setlName(resultSet1.getString("lName"));
			userbean.setUserId(resultSet1.getInt("userId"));
		} catch (SQLException e) {
			System.out.println(e.getMessage());

		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}

		return userbean;

	}
}

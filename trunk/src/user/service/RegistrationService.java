package user.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.*;

import user.model.*;
import ebay.util.DBconn;

public class RegistrationService {
	
	private DBconn dbconn = null;
	private Connection con = null;
	private PreparedStatement pst = null;

	private Statement stmt = null;
	private ResultSet resultSet = null;
	private String query1 = null;
	private String query2 = null;	
	private String query3 = null;
	private String query4 = null;
	private String query5 = null;
	private String query6 = null;
	private String query7 = null;
	
	private User user;
	private int userid;
	private int questionid;
	
	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	/*private int paymentid;
	 * 
*/
	public void insert(User user) {
		
		System.out.println("\ninside the insert method");
		System.out.println("\nusername:"+user.getUsername());
		System.out.println("\npassword:"+user.getPassword());
		System.out.println("\nfirstname:"+user.getFName());
		System.out.println("\nLastname:"+user.getLName());
		System.out.println("\ngender:"+user.getGender());
		System.out.println("\naddress:"+user.getAddress());
		System.out.println("\ncity:"+user.getCity());
		System.out.println("\nstate:"+user.getState());
		System.out.println("\ncountry:"+user.getCountry());
		System.out.println("\npincode:"+user.getPincode());
		System.out.println("\nemail i.d:"+user.getEmailId());
		System.out.println("\nphone:"+user.getPhone());
		System.out.println("\nsecret question:"+user.getQuestion());
		System.out.println("\nsecret answer:"+user.getSecretAnswer());
		
		try {
		
			//to insert details into user credentials table
			
				dbconn = new DBconn();
				con = dbconn.getConnection();
				
				String query1 = "INSERT INTO usercredentials(username, password, accStatus) VALUES(?,?,?)";
				
				pst = con.prepareStatement(query1);
				pst.setString(1, user.getUsername());
				pst.setString(2, user.getPassword());
				pst.setString(3,"0");
				
				pst.executeUpdate();
				
				System.out.println(query1);

			}

			catch (Exception e) {
				System.out.println(e.getMessage());
			}
			
			finally {
				dbconn.close(resultSet);
				dbconn.close(pst);
				dbconn.close(con);
			}
			
			try {


				//to retrieve userid from user credentials table

				dbconn = new DBconn();
				con = dbconn.getConnection();
				
				query2 = "SELECT userId FROM usercredentials WHERE username=?";
				
				pst = con.prepareStatement(query2);
				pst.setString(1, user.getUsername());
				resultSet = pst.executeQuery();
				
				if(resultSet.next())
				{
					userid=resultSet.getInt("userId");
					System.out.println("user i.d is:"+userid);
				}
												
			} 
			
			catch (Exception e) {
				System.out.println(e.getMessage());
			
			}
			
			finally {
				dbconn.close(resultSet);
				dbconn.close(pst);
				dbconn.close(con);
			}
						
			try 
			{
			
				//to retrieve secretquestionid from secret question table
			
				dbconn = new DBconn();
				con = dbconn.getConnection();
				
				System.out.println("Hi! in qid retieval try.");
				System.out.println("question is:"+user.getQuestion());
				
				query3 = "SELECT secretQID FROM secretquestion WHERE secretQuestion=?";
				
				pst = con.prepareStatement(query3);
				pst.setString(1, user.getQuestion());
				resultSet = pst.executeQuery();
				
				System.out.println(query3);
				
				if (resultSet.next()) 
				{
					questionid=resultSet.getInt("secretQID");
					System.out.println("secretqid="+questionid);
				}
				
			} 
			
			catch (Exception e) {
				System.out.println(e.getMessage());
			
			} 
			
			finally {
				dbconn.close(resultSet);
				dbconn.close(pst);
				dbconn.close(con);
			}
			
			//to retrieve PPayAccId from the table
			
			/*query4 = "SELECT PPayAccId FROM PPayAccInfo WHERE ebayUserId=?";
			
			try {
				
				pst = con.prepareStatement(query4);
				pst.setInt(1, userid);
				resultSet = pst.executeQuery();
				
				if (resultSet.next()) 
				{
					paymentid=resultSet.getInt("PPayAccId");
				}
				
			} 
			
			catch (SQLException e) {
				System.out.println(e.getMessage());
			
			} 
			*/
			
			try {
			
				dbconn = new DBconn();
				con = dbconn.getConnection();
				
				String sdate = new SimpleDateFormat("yyyy-MM-dd").format(user.getDob());
				query5 = "INSERT INTO userInfo(userId, fname, lname, gender, dob, address, city, state, country, pincode, emailid, phone, secretQID, secretanswer, isAdmin) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				
				pst = con.prepareStatement(query5);
				
				pst.setInt(1, userid);
				pst.setString(2, user.getFName());
				pst.setString(3, user.getLName());
				pst.setString(4, user.getGender());
				pst.setString(5, sdate);
				pst.setString(6, user.getAddress());
				pst.setString(7, user.getCity());
				pst.setString(8, user.getState());
				pst.setString(9, user.getCountry());
				pst.setInt(10, user.getPincode());
				pst.setString(11, user.getEmailId());
				pst.setInt(12, user.getPhone());
				pst.setInt(13, questionid);
				pst.setString(14, user.getSecretAnswer());
				pst.setString(15, "0");
				/*pst.setInt(15, paymentid);*/
				System.out.println(query5);
				
				pst.executeUpdate();

			}

			catch (Exception e) {
				System.out.println(e.getMessage());
			}
		
			finally {
				dbconn.close(resultSet);
				dbconn.close(pst);
				dbconn.close(con);
			}
		
	}
	
	public int findUser(User user)
	{
		query6 = "SELECT * FROM usercredentials where username=?";

		try 
		{

			dbconn = new DBconn();
			con = dbconn.getConnection();
			
			pst = con.prepareStatement(query6);

			pst.setString(1, user.getUsername());

			resultSet = pst.executeQuery();

			if (resultSet.next())
			{
					return 0;
			}
		} 
		
		catch (Exception e) {
			System.out.println(e.getMessage());
		} 
		
		finally {
			dbconn.close(resultSet);
			dbconn.close(pst);
			dbconn.close(con);
		}
		return 1;	
	}
	
	public ArrayList<String> findQuestions() {
		ArrayList<String> questions = new ArrayList<String>();
		String question = null;
		query7 = "SELECT secretQuestion FROM secretquestion";

		try {

			dbconn = new DBconn();
			con = dbconn.getConnection();
			pst = con.prepareStatement(query7);

			resultSet = pst.executeQuery();

			while (resultSet.next()) {
				question = resultSet.getString("secretQuestion");

				questions.add(question);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		} 

		return questions;
	}

	/*public ArrayList<String> findCities() {
		ArrayList<String> cities = new ArrayList<String>();
		String city = null;
		query = "SELECT city FROM userInfo";

		try {

			dbconn = new DBconn();
			con = dbconn.getConnection();
			pst = con.prepareStatement(query);

			resultSet = pst.executeQuery();

			while (resultSet.next()) {
				city = resultSet.getString("city");

				cities.add(city);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet);
			dbconn.close(pst);
			dbconn.close(con);
		}

		return cities;
	}

	public ArrayList<String> findStates() {
		ArrayList<String> states = new ArrayList<String>();
		String state = null;
		query = "SELECT state FROM userInfo";

		try {

			dbconn = new DBconn();
			con = dbconn.getConnection();
			pst = con.prepareStatement(query);

			resultSet = pst.executeQuery();

			while (resultSet.next()) {
				state = resultSet.getString("state");

				states.add(state);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet);
			dbconn.close(pst);
			dbconn.close(con);
		}

		return states;
	}
	
	public ArrayList<String> findCountries() {
		ArrayList<String> countries = new ArrayList<String>();
		String country = null;
		query = "SELECT country FROM userInfo";

		try {

			dbconn = new DBconn();
			con = dbconn.getConnection();
			pst = con.prepareStatement(query);

			resultSet = pst.executeQuery();

			while (resultSet.next()) {
				country = resultSet.getString("country");

				countries.add(country);
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet);
			dbconn.close(pst);
			dbconn.close(con);
		}

		return countries;
	}
*/
}

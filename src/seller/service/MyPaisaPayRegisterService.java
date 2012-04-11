package seller.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import paymentGateway.model.Bank;

import ebay.util.DBconn;

public class MyPaisaPayRegisterService {

	private DBconn dbconn = null;
	private Connection con = null;
	private PreparedStatement pst = null;
	private ResultSet resultSet1 = null;
	private String query1 = null;
	private int isSuccessful = 0;
	
	public ArrayList<Bank> populateBank(){
		
		ArrayList<Bank> bankList = new ArrayList<Bank>();
		
		try {
			
			query1 = "SELECT * from bankMaster";
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			System.out.println(pst);
			resultSet1 = pst.executeQuery();
			
			while(resultSet1.next()){
				
				Bank bank =new Bank();
				bank.setBankId(resultSet1.getInt("bankId"));
				bank.setBankName(resultSet1.getString("bankName"));
				bankList.add(bank);
			}
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(pst);
			dbconn.close(con);
		}
	return bankList;	
	}
}

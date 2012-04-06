package paymentGateway.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import paymentGateway.model.BankAccount;
import ebay.util.DBconn;


public class BankService {

	private DBconn dbconn = null;
	private Connection con = null;
	private PreparedStatement pst = null;
	private ResultSet resultSet1 = null;
	private String query1 = null;
	
	
	public int validateAccount(int bankId, int accNo, String accHolder, String password) {
		
		int result = 0;
		query1 = "SELECT bankId,accNo,accHolder,password from BankAcc where bankId=? and accNo =?";
		
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1,bankId);
			pst.setInt(2, accNo);
			resultSet1 = pst.executeQuery();
			
			if(resultSet1.next()){
				
				if(password.equals(resultSet1.getString("password"))){
					result = 1;
				}
				
			}
			
		}catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
		
		return result;
		
		
	}
	
public BankAccount validateAccountWithoutPassword(int bankId, int accNo, String accHolder) {
		
		int result = 0;
		BankAccount ba = null;
		query1 = "SELECT bankId,accNo,accHolder,creditCardNo,creditCardVerfNo,debitCardNo,debitCardVerfNo,NEFTcode,accBalance,creditPermited from BankAcc where bankId=? and accNo =?";
		
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1,bankId);
			pst.setInt(2, accNo);
			resultSet1 = pst.executeQuery();
			
			if(resultSet1.next()){
				
				if(accHolder.equals(resultSet1.getString("accHolder"))){
					ba  = new BankAccount();
					ba.setBankId(resultSet1.getInt("bankId"));
					ba.setAccNo(resultSet1.getInt("accNo"));
					ba.setAccHolder(resultSet1.getString("accHolder"));
					ba.setCreditCardNo(resultSet1.getLong("creditCardNo"));
					ba.setCreditCardVerfNo(resultSet1.getLong("creditCardVerfNo"));
					ba.setDebitCardNo(resultSet1.getLong("debitCardNo"));
					ba.setDebitCardVerfNo(resultSet1.getLong("debitCardVerfNo"));
					ba.setNEFTcode(resultSet1.getInt("NEFTcode"));
					ba.setAccBalance(resultSet1.getInt("accBalance"));
					ba.setCreditPermited(resultSet1.getInt("creditPermited"));
					
					result = 1;
				}
				
			}
			
		}catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
		
		return ba;
		
		
	}


public BankAccount getCreditCardDetails(int bankId, Long creditCardNo, Long creditCardVerfNo) {
	

	BankAccount ba = null;
	query1 = "SELECT bankId,accNo,accHolder,creditCardNo,creditCardVerfNo,debitCardNo,debitCardVerfNo,NEFTcode,accBalance,creditPermited from BankAcc where bankId=? and creditCardNo=? and  creditCardVerfNo =?";
	
	try {
		dbconn = new DBconn();
		con = DBconn.getConnection();
		pst = con.prepareStatement(query1);
		pst.setInt(1,bankId);
		pst.setLong(2, creditCardNo);
		pst.setLong(3, creditCardVerfNo);
		resultSet1 = pst.executeQuery();
		
		if(resultSet1.next()){
			
			
				ba  = new BankAccount();
				ba.setBankId(resultSet1.getInt("bankId"));
				ba.setAccNo(resultSet1.getInt("accNo"));
				ba.setAccHolder(resultSet1.getString("accHolder"));
				ba.setCreditCardNo(resultSet1.getLong("creditCardNo"));
				ba.setCreditCardVerfNo(resultSet1.getLong("creditCardVerfNo"));
				ba.setDebitCardNo(resultSet1.getLong("debitCardNo"));
				ba.setDebitCardVerfNo(resultSet1.getLong("debitCardVerfNo"));
				ba.setNEFTcode(resultSet1.getInt("NEFTcode"));
				ba.setAccBalance(resultSet1.getInt("accBalance"));
				ba.setCreditPermited(resultSet1.getInt("creditPermited"));
				
				
			
			
		}
		
	}catch (SQLException e) {
		System.out.println(e.getMessage());
	} finally {
		dbconn.close(resultSet1);
		dbconn.close(pst);
		dbconn.close(con);
	}
	
	return ba;
	
	
}



public int creditCardPayment(BankAccount ba, int amount ){
	
	int result = 0;
	query1 = "update table BankAcc set creditPermited=? where bankId=? and creditCardNo=? and  creditCardVerfNo =?";
	
	if(ba.getCreditPermited()>= amount){
		
		try{
			
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1,ba.getCreditPermited()-amount);
			pst.setInt(2,ba.getBankId());
			pst.setLong(3,ba.getCreditCardNo());
			pst.setLong(4,ba.getCreditCardVerfNo());
			result = pst.executeUpdate();
			
		}catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
				
		
	}
	return result;
}


public BankAccount getDebitCardDetails(int bankId, Long debitCardNo, Long debitCardVerfNo) {
	

	BankAccount ba = null;
	query1 = "SELECT bankId,accNo,accHolder,creditCardNo,creditCardVerfNo,debitCardNo,debitCardVerfNo,NEFTcode,accBalance,creditPermited from BankAcc where bankId=? and debitCardNo=? and  debitCardVerfNo =?";
	
	try {
		dbconn = new DBconn();
		con = DBconn.getConnection();
		pst = con.prepareStatement(query1);
		pst.setInt(1,bankId);
		pst.setLong(2, debitCardNo);
		pst.setLong(3, debitCardVerfNo);
		resultSet1 = pst.executeQuery();
		
		if(resultSet1.next()){
			
			
				ba  = new BankAccount();
				ba.setBankId(resultSet1.getInt("bankId"));
				ba.setAccNo(resultSet1.getInt("accNo"));
				ba.setAccHolder(resultSet1.getString("accHolder"));
				ba.setCreditCardNo(resultSet1.getLong("creditCardNo"));
				ba.setCreditCardVerfNo(resultSet1.getLong("creditCardVerfNo"));
				ba.setDebitCardNo(resultSet1.getLong("debitCardNo"));
				ba.setDebitCardVerfNo(resultSet1.getLong("debitCardVerfNo"));
				ba.setNEFTcode(resultSet1.getInt("NEFTcode"));
				ba.setAccBalance(resultSet1.getInt("accBalance"));
				ba.setCreditPermited(resultSet1.getInt("creditPermited"));
				
				
			
			
		}
		
	}catch (SQLException e) {
		System.out.println(e.getMessage());
	} finally {
		dbconn.close(resultSet1);
		dbconn.close(pst);
		dbconn.close(con);
	}
	
	return ba;
	
	
}

public int debitCardPayment(BankAccount ba, int amount ){
	
	int result = 0;
	query1 = "update table BankAcc set accBalance=? where bankId=? and debitCardNo=? and  debitCardVerfNo =?";
	
	if(ba.getCreditPermited()>= amount){
		
		try{
			
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1,ba.getAccBalance()-amount);
			pst.setInt(2,ba.getBankId());
			pst.setLong(3,ba.getDebitCardNo());
			pst.setLong(4,ba.getDebitCardVerfNo());
			result = pst.executeUpdate();
			
		}catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
				
		
	}
	return result;
}


public int netbankingPayment(BankAccount ba, int amount, int NEFTcode ){
	
	int result = 0;
	query1 = "update table BankAcc set accBalance=? where bankId=? and NEFTcode=? and  accNo =?";
	
	if(ba.getCreditPermited()>= amount){
		
		try{
			
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1,ba.getAccBalance()-amount);
			pst.setInt(2,ba.getBankId());
			pst.setLong(3,NEFTcode);
			pst.setLong(4,ba.getAccNo());
			result = pst.executeUpdate();
			
		}catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
				
		
	}
	return result;
}
	
	
	/**
	 * @param args
	 */	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}

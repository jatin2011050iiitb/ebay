package paymentGateway.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ebay.util.DBconn;
import paymentGateway.model.PPTransaction;
import paymentGateway.model.PPayAccInfo;
import paymentGateway.model.PPayTransfer;

public class PPayService {
	
	private DBconn dbconn = null;
	private Connection con = null;
	private PreparedStatement pst = null;
	private ResultSet resultSet1 = null;
	private String query1 = null;

	public PPayAccInfo getPPayAccInfoByEbayUserId(int ebayUserId){
		
		PPayAccInfo ppacc = null;
		query1 = "Select PPayAccId,ebayUserId,bankId,accNo,PPayBalance,rating from PPayAccInfo where ebayUserId=?";
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1,ebayUserId);
			resultSet1 = pst.executeQuery();
			
			if(resultSet1.next()){
				
				ppacc = new PPayAccInfo();
				
				ppacc.setBankId(resultSet1.getInt("bankId"));
				ppacc.setPPayAccId(resultSet1.getInt("PPayAccId"));
				ppacc.setEbayUserId(resultSet1.getInt("ebayUserId"));
				ppacc.setAccNo(resultSet1.getInt("accNo"));
				ppacc.setPPayBalance(resultSet1.getInt("PPayBalance"));
				ppacc.setRating(resultSet1.getInt("rating"));
						
			}
		}catch (SQLException e) {
				System.out.println(e.getMessage());
			} finally {
				dbconn.close(resultSet1);
				dbconn.close(pst);
				dbconn.close(con);
			}
			
		return ppacc;
		
		
	}
	
	public int commitPPTransaction(PPTransaction ppt){
		int result = 0;
		
		query1 = "insert into PPTransaction (buyerId,sellerId,cartId,accNo,bankId,PPayAccId,paymentType,amount,pRecvTS,status) values (?,?,?,?,?,?,?,?,?,?)";
		try{
			
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1,ppt.getBuyerId());
			pst.setInt(2,ppt.getSellerId());
			pst.setInt(3,ppt.getCartId());
			pst.setInt(4,ppt.getAccNo());
			pst.setInt(5,ppt.getBankId());
			pst.setInt(6,ppt.getPPayAccId());
			pst.setString(7,ppt.getPaymentType());
			pst.setInt(8,ppt.getAmount());
			pst.setTimestamp(9,ppt.getPRecvTS());
			pst.setString(10,ppt.getStatus());
			
			result = pst.executeUpdate();
			
		}catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
				
		
	
	return result;
	}
	
	public int getTransactionId(int cartId, int sellerId){
		
		int transactionId = 0;
		query1 = "Select transactionId from PPTransaction where cartId=? and sellerId=?";
		
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1,cartId);
			pst.setInt(2, sellerId);
			resultSet1 = pst.executeQuery();
			
			if(resultSet1.next()){
				transactionId = resultSet1.getInt("transactionId");		
			}
		}catch (SQLException e) {
				System.out.println(e.getMessage());
			} finally {
				dbconn.close(resultSet1);
				dbconn.close(pst);
				dbconn.close(con);
			}
		return transactionId;
	}
	


public int commitPPayTransferStaging(PPayTransfer pptran){
	int result=0;
	query1 = "insert into PPayTransfer (transactionId,PPayAccId,amount,transferStatus) values(?,?,?,?)";
	
	try{
		dbconn = new DBconn();
		con = DBconn.getConnection();
		pst = con.prepareStatement(query1);
		pst.setInt(1,pptran.getTransactionId());
		pst.setInt(2,pptran.getPPayAccId());
		pst.setInt(3,pptran.getAmount());
		pst.setInt(4,pptran.getTransferStatus());
		System.out.println(pst.toString());
		result = pst.executeUpdate();
		
	}catch (SQLException e) {
		System.out.println(e.getMessage());
	} finally {
		dbconn.close(resultSet1);
		dbconn.close(pst);
		dbconn.close(con);
	}
	
	return result;
}

public int statusUpdatePPayTransfer(int transactionId, int status){
	int result = 0;
	query1="update table PPayTransfer set status=? where transactionId=?";
	
	try{
		dbconn = new DBconn();
		con = DBconn.getConnection();
		pst = con.prepareStatement(query1);
		pst.setInt(1,status);
		pst.setInt(2,transactionId);
		result = pst.executeUpdate();
		
	}catch (SQLException e) {
		System.out.println(e.getMessage());
	} finally {
		dbconn.close(resultSet1);
		dbconn.close(pst);
		dbconn.close(con);
	}
	return result;
	
}

public PPTransaction getDetailsByCartId(int cartId){
	PPTransaction p = new PPTransaction();
	query1 = "select * from PPTransaction where cartId = ?";
	try {
		dbconn = new DBconn();
		con = DBconn.getConnection();
		pst = con.prepareStatement(query1);
		pst.setInt(1,cartId);
		resultSet1 = pst.executeQuery();
		
		if(resultSet1.next()){
			p = new PPTransaction();
			p.setTransactionId(resultSet1.getInt("transactionId"));
			p.setBuyerId(resultSet1.getInt("buyerId"));
			p.setSellerId(resultSet1.getInt("sellerId"));
			p.setCartId(resultSet1.getInt("cartId"));
			p.setAccNo(resultSet1.getInt("accNo"));
			p.setBankId(resultSet1.getInt("bankId"));
			p.setPPayAccId(resultSet1.getInt("PPayAccId"));
			p.setPaymentType(resultSet1.getString("paymentType"));
			p.setAmount(resultSet1.getInt("amount"));
			p.setPRecvTS(resultSet1.getTimestamp("pRecvTS"));
			p.setPPaidTS(resultSet1.getTimestamp("pPaidTS"));
			p.setPCancelTS(resultSet1.getTimestamp("pCancelTS"));
			p.setStatus(resultSet1.getString("status"));
								
		}
	}catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
	
	
	return p;
}

public ArrayList<PPTransaction> getAllPPTransactions(){
	ArrayList<PPTransaction> ppt = new ArrayList<PPTransaction>();
	PPTransaction p;
	query1 = "select * from PPTransaction";
	try {
		dbconn = new DBconn();
		con = DBconn.getConnection();
		pst = con.prepareStatement(query1);
		resultSet1 = pst.executeQuery();
		
		while(resultSet1.next()){
			p = new PPTransaction();
			p.setTransactionId(resultSet1.getInt("transactionId"));
			p.setBuyerId(resultSet1.getInt("buyerId"));
			p.setSellerId(resultSet1.getInt("sellerId"));
			p.setCartId(resultSet1.getInt("cartId"));
			p.setAccNo(resultSet1.getInt("accNo"));
			p.setBankId(resultSet1.getInt("bankId"));
			p.setPPayAccId(resultSet1.getInt("PPayAccId"));
			p.setPaymentType(resultSet1.getString("paymentType"));
			p.setAmount(resultSet1.getInt("amount"));
			p.setPRecvTS(resultSet1.getTimestamp("pRecvTS"));
			p.setPPaidTS(resultSet1.getTimestamp("pPaidTS"));
			p.setPCancelTS(resultSet1.getTimestamp("pCancelTS"));
			p.setStatus(resultSet1.getString("status"));
			
			ppt.add(p);
					
		}
	}catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
	
	return ppt;
}

}
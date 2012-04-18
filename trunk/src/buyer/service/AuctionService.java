package buyer.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import buyer.model.Bid;

import user.model.Category;
import user.model.Product;

import ebay.util.DBconn;

public class AuctionService {
	private DBconn dbconn = null;
	private Connection con = null;
	private PreparedStatement pst = null;
	private ResultSet resultSet1 = null;
	private String query1 = null;
	
	
	public void setBid(int auctionId, int bidderId, int bidValue) {
		
		query1 = "INSERT INTO bid_list(bidderId, auctionId, bidValue, bidTS) VALUES(?,?,?, now())";
		
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			
			pst.setInt(1, bidderId);
			pst.setInt(2, auctionId);
			pst.setInt(3, bidValue);
			System.out.println(pst);
			pst.executeUpdate();
			

		} catch (SQLException e) {
			System.out.println("Error in AuctionService: setBid()");
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
	}
	
	
	public int getAuctionId(int productId) {
		int auctionId;
		query1 = "SELECT auctionId FROM auctionProduct WHERE productId=?";
		
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			
			pst.setInt(1, productId);
			System.out.println(pst);
			resultSet1 = pst.executeQuery();
			
			if(resultSet1.next()) {
				auctionId = resultSet1.getInt("auctionId");
			}
			else {
				auctionId = 0;
			}
			
			return auctionId;

		} catch (SQLException e) {
			System.out.println("Error in AuctionService: setBid()");
			System.out.println(e.getMessage());
			return 0;
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
		
	}
	
	
	public boolean isBidTimeout(int productId) {
		query1 = "SELECT * FROM product WHERE productId=? AND  endDate < now()";
		
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1, productId);
			System.out.println(pst);
			resultSet1 = pst.executeQuery();
			
			if(resultSet1.next()) {
				return true;
			}
			else {
				return false;
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return true;
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
		
	}
	
	
	public int getMaxBid(int auctionId) {
		int maxBid = 0;
		query1 = "SELECT highestBidPrice FROM auctionProduct WHERE auctionId=?";
		
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1, auctionId);
			System.out.println(pst);
			resultSet1 = pst.executeQuery();
			
			if(resultSet1.next()) {
				maxBid = resultSet1.getInt("highestBidPrice");
			}
			
			return maxBid;

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			System.out.println("error in AuctionService getMaxBid()");
			return maxBid;
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
	}
	
	
	public Timestamp getTimestamp(int auctionId, int buyerid) {
		Timestamp timeStamp = null;
		query1 = "SELECT bidTS FROM bid_list WHERE auctionId=? AND bidderId=?";
		
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1, auctionId);
			pst.setInt(2, buyerid);
			System.out.println(pst);
			resultSet1 = pst.executeQuery();
			
			if(resultSet1.next()) {
				timeStamp = (Timestamp) resultSet1.getTimestamp("bidTS");
			}
			
			return timeStamp;

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			System.out.println("error in AuctionService getMaxBid()");
			return timeStamp;
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
	}
	
	public ArrayList<Bid> getBiddingHistory(int auctionId) {
		ArrayList<Bid> bidHistoryList = new ArrayList<Bid>();
		query1 = "SELECT bidderId, bidValue, bidTS FROM bid_list WHERE auctionId=? order by bidValue DESC";
		
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1, auctionId);
			System.out.println(pst);
			resultSet1 = pst.executeQuery();
			
			while(resultSet1.next()) {
				Bid bid = new Bid();
				bid.setBidderId(resultSet1.getInt("bidderId"));
				bid.setBidTime(resultSet1.getTimestamp("bidTS"));
				bid.setBidValue(resultSet1.getInt("bidValue"));
				
				bidHistoryList.add(bid);
			}
			
			return bidHistoryList;

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			System.out.println("error in AuctionService getMaxBid()");
			return bidHistoryList;
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
	}
}

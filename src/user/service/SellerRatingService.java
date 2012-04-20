package user.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import user.model.SellerRating;

import ebay.util.DBconn;

public class SellerRatingService {
	private DBconn dbconn = null;
	private Connection con = null;
	private PreparedStatement pst = null;
	private ResultSet resultSet1 = null;

	
	
	public SellerRating getSellerAverageRating(int sellerId){
		SellerRating sellerRating = new SellerRating();
		try{
			String query="select averageRating, userVotes from ratingService where sellerId=?";
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query);
			pst.setInt(1,sellerId);
			pst.executeQuery();
			if (resultSet1.next()){
			sellerRating.setAverageRating((int)resultSet1.getInt("averageRating"));
			sellerRating.setUserVotes((int)resultSet1.getInt("userVotes"));
			}
			else{
				try{
				String query1="INSERT INTO ratingService where sellerId=?, averageRating=0, userVotes=0";
				dbconn = new DBconn();
				con = DBconn.getConnection();
				pst = con.prepareStatement(query);
				pst.setInt(1,sellerId);
				pst.executeQuery();
				}
				catch(SQLException ex){
					ex.printStackTrace();		
				}
				finally{
					dbconn.close(pst);
					dbconn.close(con);

				}
			}
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		finally{
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
		return sellerRating;
	}
	
	
	public int setAverageRating(int sellerId,int currentRate,SellerRating sellerRating){
		try{
			int averageRating = ((sellerRating.getAverageRating() * sellerRating.getUserVotes()) + currentRate)/(sellerRating.getUserVotes()+1);

			String query="UPDATE ratingService SET averageRating=?, userVotes=?  where sellerId=?";
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query);
			pst.setInt(1,averageRating);
			pst.setInt(2,sellerRating.getUserVotes()+1);
			pst.setInt(3,sellerId);

			pst.executeUpdate();
			return 1;
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		finally{
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
		return 0;
	}
}

package user.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import user.model.Product;
import user.model.SubCategory;



import ebay.util.DBconn;

public class ProductService {

	private DBconn dbconn = null;
	private Connection con = null;
	private PreparedStatement pst = null;
	private ResultSet resultSet1 = null;
	private String query1 = null;
	
	public ArrayList<SubCategory> getSubCategoryList(int categoryId) {
		ArrayList<SubCategory> subCategoryList =new ArrayList<SubCategory>();
		
		try {
			query1 = "SELECT subcategoryId, subcategoryDesc FROM subcategory where categoryId=?";
			dbconn = new DBconn();
			con = dbconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1,categoryId);
			resultSet1 = pst.executeQuery();
			
			while(resultSet1.next()) {
				SubCategory subcat = new SubCategory();
				subcat.setSubCategoryId(resultSet1.getInt("subcategoryId"));
				subcat.setSubCategoryDesc(resultSet1.getString("subcategoryDesc"));
				subCategoryList.add(subcat);
				//System.out.println(resultSet1.getString("subcategoryDesc"));
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
		return subCategoryList;
	}
	
	public ArrayList<Product> getProductList(int subCategoryId) {
	
		ArrayList<Product> productList=new ArrayList<Product>();
		
		try {
			query1 = "SELECT * FROM product where subcategoryId=? and sold=?";
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1,subCategoryId);
			pst.setString(2,"0");
			resultSet1 = pst.executeQuery();
			
			while(resultSet1.next()) {
				Product product = new Product();
				product.setProductId(resultSet1.getInt("productId"));
				product.setProductDesc(resultSet1.getString("productDesc"));
				product.setSaleType(resultSet1.getInt("saleType"));
				productList.add(product);
				//System.out.println(resultSet1.getString("productDesc"));
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
		return productList;
	}	
	
	public Product getProduct(int productId) {
		
		Product product=new Product();
		
		try {
			query1 = "SELECT * FROM product where productId=? and sold=?";
			dbconn = new DBconn();
			con = dbconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1,productId);
			pst.setString(2,"0");
			System.out.println("Product setting:"+pst);
			resultSet1 = pst.executeQuery();
			
			resultSet1.next(); 
				
				product.setProductId(resultSet1.getInt("productId"));
				product.setProductDesc(resultSet1.getString("productDesc"));
				product.setSellerId(resultSet1.getInt("sellerId"));
				product.setSaleType(resultSet1.getInt("saletype"));
				if(product.getSaleType()==1){
					product.setSaleTypeDesc("Buy It Now");
				}
				else{
					product.setSaleTypeDesc("Place Bid");
				}
				product.setProdCondition(resultSet1.getString("prodCondition"));
				product.setStartDate(resultSet1.getTimestamp("startDate"));
				product.setEndDate(resultSet1.getTimestamp("endDate"));
				product.setShipmentState(resultSet1.getString("shipmentState"));
				product.setShipmentCharges(resultSet1.getInt("shipmentCharges"));
				//System.out.println(resultSet1.getString("productDesc"));
			

				
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
		
		try {
			query1="SELECT * FROM userinfo WHERE userId=?";
			dbconn = new DBconn();
			con = dbconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1,product.getSellerId());
			System.out.println("Product setting:"+pst);
			resultSet1 = pst.executeQuery();
			
			
			resultSet1.next();
			product.setSellerFName(resultSet1.getString("fName"));
			product.setSellerLName(resultSet1.getString("lName"));
			product.setSellerCity(resultSet1.getString("city"));
			product.setSellerState(resultSet1.getString("state"));
			product.setSellerCountry(resultSet1.getString("country"));
						
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
				}
		
		
		if(product.getSaleType()==1){
			
			try {
				query1="SELECT * FROM binProduct where productId=?";
				dbconn = new DBconn();
				con = dbconn.getConnection();
				pst = con.prepareStatement(query1);
				pst.setInt(1,productId);
				System.out.println("Product setting:"+pst);
				resultSet1 = pst.executeQuery();
				
				resultSet1.next(); 
					product.setStock(resultSet1.getInt("stock"));
					product.setPrice(resultSet1.getInt("binPrice"));
						
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			} finally {
				dbconn.close(resultSet1);
				dbconn.close(pst);
				dbconn.close(con);
			}
		}
		else{
			
			try {
				query1="SELECT * FROM auctionProduct where productId=?";
				dbconn = new DBconn();
				con = dbconn.getConnection();
				pst = con.prepareStatement(query1);
				pst.setInt(1,productId);
				System.out.println("Product setting:"+pst);
				resultSet1 = pst.executeQuery();
				
				resultSet1.next(); 
					product.setStock(1);
					product.setAuctionId(resultSet1.getInt("auctionId"));
					product.setPrice(resultSet1.getInt("highestBidPrice"));
					product.setStepPrice(resultSet1.getInt("stepPrice"));			
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			} finally {
				dbconn.close(resultSet1);
				dbconn.close(pst);
				dbconn.close(con);
					}
			
			try {
				query1="SELECT count(*) as bidcount FROM bid_list where auctionId=?";
				dbconn = new DBconn();
				con = dbconn.getConnection();
				pst = con.prepareStatement(query1);
				pst.setInt(1,product.getAuctionId());
				System.out.println("Product setting:"+pst);
				resultSet1 = pst.executeQuery();
				
				
				resultSet1.next();
				product.setBidCount(resultSet1.getInt("bidcount"));
				
							
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			} finally {
				dbconn.close(resultSet1);
				dbconn.close(pst);
				dbconn.close(con);
					}
			
		}
			
		return product;
	}
}

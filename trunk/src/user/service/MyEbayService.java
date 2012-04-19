package user.service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;


import user.model.Product;
import buyer.model.ShoppingCart;
import buyer.model.ShoppingCartItem;

import ebay.util.DBconn;

public class MyEbayService {
	private DBconn dbconn = null;
	private Connection con = null;
	private PreparedStatement pst = null;
	private ResultSet resultSet1 = null;
	private ResultSet resultSet = null;
	private int success =0;

	public int updateProfile(int userid,String fName,String lName,String address,String city,String state,String country,int pincode,String emailid){
		try{
			String query = "UPDATE userinfo set fName=?, lname=?, address=?, city=?, state=?, country=?,pincode=?, emailId=? where userId=?";
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query);
			pst.setString(1,fName);
			pst.setString(2,lName);
			pst.setString(3,address);
			pst.setString(4,city);
			pst.setString(5,state);
			pst.setString(6,country);
			pst.setInt(7,pincode);
			pst.setString(8,emailid);
			pst.setInt(9,userid);
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
	
	// 	For Confirm Item Delivery In MyPaisaPay 
	public ArrayList<ShoppingCart> getShoppingCartConfirmDetails(int userId){
		ArrayList<ShoppingCart> allsellingproduct= new ArrayList<ShoppingCart>();
		ShoppingCart shoppingcart;
		String query="select * from shoppingCart where buyerId=? and paymentConfirmation='1' and recieptConfirmation='2' and courierNum is NOT NULL and shipmentStatus='shipped'";
		try{
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = (PreparedStatement) con.prepareStatement(query);
			pst.setInt(1, userId);
			resultSet = pst.executeQuery();

			while(resultSet.next()) {
				shoppingcart = new ShoppingCart();
				shoppingcart.setCartId((int)resultSet.getInt("cartId"));
				shoppingcart.setSellerId((int)resultSet.getInt("sellerId"));
				shoppingcart.setPaymentConfirmation(resultSet.getString("paymentConfirmation"));
				shoppingcart.setRecieptConfirmation(resultSet.getString("recieptConfirmation"));
				shoppingcart.setPaymentTS((Timestamp)resultSet.getTimestamp("paymentTS"));
				shoppingcart.setGrandTotal((int)resultSet.getInt("grandTotal"));	
				shoppingcart.setShipmentStatus(resultSet.getString("shipmentStatus"));	
				
				allsellingproduct.add(shoppingcart);
			}
		}
		catch(Exception e){
			System.out.println("error occured");
			System.out.println(e.getMessage());
		}
		finally{
			dbconn.close(resultSet);
			dbconn.close(pst);
			dbconn.close(con);
		}		
		return allsellingproduct;
	}
	// Payment History in Myebay
	public ArrayList<ShoppingCart> getShoppingCartDetails(int userId){
		ArrayList<ShoppingCart> allsellingproduct= new ArrayList<ShoppingCart>();
		ShoppingCart shoppingcart;
		String query="select * from shoppingCart where buyerId=?";
		try{
			dbconn = new DBconn();
			con =  DBconn.getConnection();
			pst = (PreparedStatement) con.prepareStatement(query);
			pst.setInt(1, userId);
			resultSet = pst.executeQuery();

			System.out.println("UserId="+userId);
			while(resultSet.next()) {
				shoppingcart = new ShoppingCart();
				shoppingcart.setCartId((int)resultSet.getInt("cartId"));
				shoppingcart.setSellerId((int)resultSet.getInt("sellerId"));
				shoppingcart.setSellerName(resultSet.getString("sellerName"));
				shoppingcart.setPaymentConfirmation(resultSet.getString("paymentConfirmation"));
				shoppingcart.setRecieptConfirmation(resultSet.getString("recieptConfirmation"));
				shoppingcart.setPaymentTS((Timestamp)resultSet.getTimestamp("paymentTS"));
				shoppingcart.setGrandTotal((int)resultSet.getInt("grandTotal"));	
				shoppingcart.setETD(resultSet.getInt("ETD"));	
				shoppingcart.setShipmentStatus(resultSet.getString("shipmentStatus"));	
				allsellingproduct.add(shoppingcart);
			}
		}
		catch(Exception e){
			System.out.println("error occured");
			System.out.println(e.getMessage());
		}
		finally{
			dbconn.close(resultSet);
			dbconn.close(pst);
			dbconn.close(con);
		}		
		return allsellingproduct;
	}
	// To get the Items/Products in each Cart
	public ArrayList<ShoppingCartItem> getShoppingCartItemDetails(int cartId){
		ArrayList<ShoppingCartItem> shoppingCartItems= new ArrayList<ShoppingCartItem>();
		ShoppingCartItem shoppingcartitems;
		String query="select * from ShoppingCartItem where cartId=?";
		try{
			dbconn = new DBconn();
			con =  DBconn.getConnection();
			pst = (PreparedStatement) con.prepareStatement(query);
			pst.setInt(1, cartId);
			resultSet = pst.executeQuery();

			System.out.println("UserId="+cartId);
			while(resultSet.next()) {
				shoppingcartitems = new ShoppingCartItem();
				shoppingcartitems.setCartId((int)resultSet.getInt("cartId"));
				shoppingcartitems.setProductId((int)resultSet.getInt("productId"));
				shoppingcartitems.setProductDesc(resultSet.getString("productDesc"));
				shoppingcartitems.setQuantity((int)resultSet.getInt("quantity"));
				shoppingcartitems.setUnitPrice((int)resultSet.getInt("unitPrice"));
				shoppingcartitems.setSubtotal((int)resultSet.getInt("subtotal"));
				shoppingcartitems.setShippingPrice((int)resultSet.getInt("shippingPrice"));	
				shoppingcartitems.setBuyerId((int)resultSet.getInt("buyerId"));	
				shoppingcartitems.setSellerId(resultSet.getInt("sellerId"));	
				shoppingcartitems.setSellerName(resultSet.getString("sellerName"));	
				shoppingCartItems.add(shoppingcartitems);
			}
		}
		catch(Exception e){
			System.out.println("error occured");
			System.out.println(e.getMessage());
		}
		finally{
			dbconn.close(resultSet);
			dbconn.close(pst);
			dbconn.close(con);
		}		
		return shoppingCartItems;
	}	
	// Mark cartId as received (Includes all the Products in that cart)
	public int markItemReceived(int cartId, String markReceivedStatus){
		if(markReceivedStatus.equals("received"))
		{
			try{
	
					String query="UPDATE shoppingCart set recieptConfirmation='1' , shipmentStatus='delivered', shipTS=now() where cartId=?";
					dbconn = new DBconn();
					con = DBconn.getConnection();
					pst = con.prepareStatement(query);
					pst.setInt(1,cartId);
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
		}
		else if(markReceivedStatus.equals("notreceived"))
		{
			try{
	
					String query="UPDATE shoppingCart set shipmentStatus='failed' where cartId=?";
					dbconn = new DBconn();
					con = DBconn.getConnection();
					pst = con.prepareStatement(query);
					pst.setInt(1,cartId);
					pst.executeUpdate();
					return 2;
			}
			catch(SQLException e){
				e.printStackTrace();
			}
			finally{
				dbconn.close(resultSet1);
				dbconn.close(pst);
				dbconn.close(con);
			}
		}
	

		return 0;
	}
	// Getting all list of products for a particular seller
	public ArrayList<Product> getAllSellProducts(int userId){
		ArrayList<Product> allsellproducts = new ArrayList<Product>();
		Product product;
		try{
			dbconn = new DBconn();
			con = DBconn.getConnection();
			String query="select product.productId, product.productDesc, product.saleType from product where product.sellerId=?";
			pst = (PreparedStatement) con.prepareStatement(query);
			pst.setInt(1, userId);


			resultSet = pst.executeQuery();

			while(resultSet.next()) {
				product = new Product();
				product.setProductId((int)resultSet.getInt("productId"));
				product.setProductDesc((String) resultSet.getString("productDesc"));
				product.setSaleType((int) resultSet.getInt("saleType"));
				allsellproducts.add(product);
			}
			success=1;
			System.out.println("Succee value:"+success);
		}
		catch(Exception e){
			System.out.println("error occured");
			System.out.println(e.getMessage());
		}
		finally{
			dbconn.close(resultSet);
			dbconn.close(pst);
			dbconn.close(con);
		}

		
		return allsellproducts;
		
		

	}
	
	

	
	
	
	
	
}

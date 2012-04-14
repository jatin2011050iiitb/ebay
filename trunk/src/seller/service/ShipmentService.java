package seller.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ebay.util.DBconn;

import seller.model.ShipmentCart;
import seller.model.ShipmentCartDetails;
import seller.model.ShipmentItem;

public class ShipmentService {
	
	private DBconn dbconn = null;
	private Connection con = null;
	private PreparedStatement pst = null;
	private ResultSet resultSet1 = null;
	private String query1 = null;
	
	// get the list for buyers to whom a given seller has to ship items
	public ArrayList<Integer> getCartIdList(int sellerId) {
		ArrayList<Integer> cartIdList = new ArrayList<Integer>();
		
		query1 = "SELECT cartId FROM shoppingCart WHERE sellerId=? AND paymentConfirmation=? AND shipmentStatus=?";
		
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			
			pst.setInt(1, sellerId);
			pst.setString(2, "1");
			pst.setString(3, "processing");
			
			resultSet1 = pst.executeQuery();
			
			while(resultSet1.next()) {
				cartIdList.add(resultSet1.getInt("cartId"));
			}
			
			return cartIdList;

		} catch (SQLException e) {
			System.out.println("Error in ShipmentService: getCartIdList()");
			System.out.println(e.getMessage());
			return cartIdList;
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
		
		
		
	}
	
	
	public ArrayList<ShipmentItem> getShipmentItems(int cartId) {
		ArrayList<ShipmentItem> shipmentItems = new ArrayList<ShipmentItem>();
		ShipmentItem shipmentItem;
		
		query1 = "SELECT productId, productDesc, quantity FROM shoppingCartItem WHERE cartId=?";
		
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			
			pst.setInt(1, cartId);
			
			resultSet1 = pst.executeQuery();
			
			while(resultSet1.next()) {
				shipmentItem = new ShipmentItem();
				shipmentItem.setProductId(resultSet1.getInt("productId"));
				shipmentItem.setProductDesc(resultSet1.getString("productDesc"));
				shipmentItem.setQuantityToShip(resultSet1.getInt("quantity"));
				shipmentItems.add(shipmentItem);
			}
			
			return shipmentItems;

		} catch (SQLException e) {
			System.out.println("Error in ShipmentService: getShipmentItems()");
			System.out.println(e.getMessage());
			return shipmentItems;
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
		
	}
	
	
	public ShipmentCartDetails getShipmentCartDetails(int cartId) {
		ShipmentCartDetails shipmentCartDetails = new ShipmentCartDetails();
		
		query1 = "SELECT shippingAddress, buyerId,grandTotal,fName FROM shoppingCart,userInfo WHERE shoppingCart.cartId=? AND userInfo.userId=shoppingCart.buyerId";
		
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			
			pst.setInt(1, cartId);
			
			resultSet1 = pst.executeQuery();
			
			while(resultSet1.next()) {
				shipmentCartDetails.setBuyerId(resultSet1.getInt("buyerId"));
				shipmentCartDetails.setBuyerName(resultSet1.getString("fName"));
				shipmentCartDetails.setTotal(resultSet1.getInt("grandTotal"));
				shipmentCartDetails.setShipmentAddress(resultSet1.getString("shippingAddress"));
			}
			
			return shipmentCartDetails;

		} catch (SQLException e) {
			System.out.println("Error in ShipmentService: getShipmentCartDetails()");
			System.out.println(e.getMessage());
			return shipmentCartDetails;
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
	}
	
	
	
	public void addShippingDetails(ShipmentCart shipmentCart) {
		query1 = "UPDATE shoppingCart SET courierNum=?, courierCompany=?, ETD=?, shipmentStatus=?, shipTS=now() WHERE cartId=? AND shipmentStatus=? AND paymentConfirmation=?";
		
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			
			
			pst.setInt(1, shipmentCart.getShipmentCartDetails().getShipmentId());
			
			pst.setString(2, shipmentCart.getShipmentCartDetails().getShipmentCompany());
			
			pst.setInt(3, shipmentCart.getShipmentCartDetails().getETD());
			
			pst.setString(4, "shipped");
			
			pst.setInt(5, shipmentCart.getCartId());
			
			pst.setString(6, "processing");
			pst.setString(7, "1");
			
			pst.executeUpdate();	

		} catch (SQLException e) {
			System.out.println("Error in ShipmentService: addShippingDetails()");
			System.out.println(e.getMessage());
			
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
	
	}
	
}

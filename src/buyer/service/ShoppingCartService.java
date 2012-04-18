package buyer.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import ebay.util.DBconn;

import buyer.model.ShoppingCart;
import buyer.model.ShoppingCartArray;
import buyer.model.ShoppingCartItem;

public class ShoppingCartService {
	
	private DBconn dbconn = null;
	private Connection con = null;
	private PreparedStatement pst = null;
	private ResultSet resultSet1 = null;
	private String query1 = null;
	private int isSuccessful = 0;

	public ArrayList<Integer> getSellerids(int buyerId) {
	

		ArrayList<Integer> sellerIds = new ArrayList<Integer>();
		try {
			isSuccessful = 0;
			query1 = "SELECT sellerId FROM shoppingCart where buyerId=? and paymentConfirmation=?";
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1, buyerId);
			pst.setString(2, "0");
			System.out.println(pst);
			resultSet1 = pst.executeQuery();
			int temp;

			while (resultSet1.next()) {
				temp = resultSet1.getInt("sellerId");
				sellerIds.add(temp);
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
		return sellerIds;
	}

	public ShoppingCartArray getSCartArray(ArrayList<Integer> sellerIdList,int buyerId) {
		
		ShoppingCartArray cartArray = new ShoppingCartArray();
	
		ArrayList<ShoppingCart> shoppingCarts = new ArrayList<ShoppingCart>();
		int j = 0;
		while (j < sellerIdList.size()) {
			System.out.println("getShoppingCartArray=SellerId="+sellerIdList.get(j));
			ShoppingCart shoppingCart = new ShoppingCart();
			shoppingCart=getShoppingCartforSellerId(sellerIdList.get(j), buyerId);
			shoppingCarts.add(shoppingCart);
			j++;	
		}
		cartArray.setShoppingCartList(shoppingCarts);
		return cartArray;
	}

	ShoppingCart getShoppingCartforSellerId(int sellerId,int buyerId) {
		
		ShoppingCart shoppingCart = new ShoppingCart();
		ArrayList<ShoppingCartItem> shoppingCartItems = new ArrayList<ShoppingCartItem>();
		shoppingCart=getcartId(sellerId,buyerId);
		shoppingCartItems=getItemsByCartId(shoppingCart);
		shoppingCart.setItemArray(shoppingCartItems);
		
		return shoppingCart;
	}

	public ArrayList<ShoppingCartItem> getItemsByCartId(ShoppingCart shoppingCart) {
		ArrayList<ShoppingCartItem> shoppingCartItems = new ArrayList<ShoppingCartItem>();
		try {
			isSuccessful = 0;
		
query1 = "SELECT * FROM shoppingCartItem where cartId=? and buyerId=? and sellerId=? and itemDeselected=?";
			dbconn = new DBconn();
			con = dbconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1, shoppingCart.getCartId());
			pst.setInt(2, shoppingCart.getBuyerId());
			pst.setInt(3, shoppingCart.getSellerId());
			pst.setInt(4,0);
			System.out.println(pst);
			resultSet1 = pst.executeQuery();

			while(resultSet1.next()) {
			
				ShoppingCartItem shoppingCartItem = new ShoppingCartItem();
				
				shoppingCartItem.setCartId(resultSet1.getInt("cartId"));
				shoppingCartItem.setCartItemId(resultSet1.getInt("cartItemId"));
				shoppingCartItem.setProductId(resultSet1.getInt("productId"));
				shoppingCartItem.setProductDesc(resultSet1.getString("productDesc"));
				shoppingCartItem.setQuantity(resultSet1.getInt("quantity"));
				shoppingCartItem.setUnitPrice(resultSet1.getInt("unitPrice"));
				shoppingCartItem.setSubtotal(resultSet1.getInt("subtotal"));
				shoppingCartItem.setShippingPrice(resultSet1.getInt("shippingPrice"));
				shoppingCartItem.setBuyerId(resultSet1.getInt("buyerId"));
				shoppingCartItem.setSellerId(resultSet1.getInt("sellerId"));
				shoppingCartItem.setSellerName(resultSet1.getString("sellerName"));
		
				shoppingCartItems.add(shoppingCartItem);
				
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
		
		return shoppingCartItems;
	}

public ShoppingCart getcartId(int sellerId,int buyerId){
	ShoppingCart shoppingCart = new ShoppingCart();
	try {
		isSuccessful = 0;
		query1 = "SELECT * FROM shoppingCart where buyerId=? and sellerId=? and paymentConfirmation=?";
		dbconn = new DBconn();
		con = DBconn.getConnection();
		pst = con.prepareStatement(query1);
		pst.setInt(1, buyerId);
		pst.setInt(2, sellerId);
		pst.setString(3,"0");
		System.out.println(pst);
		resultSet1 = pst.executeQuery();

		if (resultSet1.next()) {
			isSuccessful = 1;
			shoppingCart.setCartId(resultSet1.getInt("cartId"));
			shoppingCart.setBuyerId(resultSet1.getInt("buyerId"));
			shoppingCart.setSellerId(resultSet1.getInt("sellerId"));
			shoppingCart.setShippingAddress(resultSet1.getString("shippingAddress"));
			shoppingCart.setSellerName(resultSet1.getString("sellerName"));
			shoppingCart.setPaymentConfirmation(resultSet1.getString("paymentConfirmation"));
			shoppingCart.setRecieptConfirmation(resultSet1.getString("recieptConfirmation"));
		}

	} catch (SQLException e) {
		System.out.println(e.getMessage());
	} finally {
		dbconn.close(resultSet1);
		dbconn.close(pst);
		dbconn.close(con);
	}
return shoppingCart;
}
public ShoppingCart getCartByCartID(int cartId){
	ShoppingCart shoppingCart = new ShoppingCart();
	ArrayList<ShoppingCartItem> shoppingCartItems = new ArrayList<ShoppingCartItem>();
	
	try {
		isSuccessful = 0;
		query1 = "SELECT * FROM shoppingCart where cartId=?";
		dbconn = new DBconn();
		con = DBconn.getConnection();
		pst = con.prepareStatement(query1);
		pst.setInt(1, cartId);
		System.out.println(pst);
		resultSet1 = pst.executeQuery();

		if (resultSet1.next()) {
			isSuccessful = 1;
			shoppingCart.setCartId(resultSet1.getInt("cartId"));
			shoppingCart.setBuyerId(resultSet1.getInt("buyerId"));
			shoppingCart.setSellerId(resultSet1.getInt("sellerId"));
			shoppingCart.setShippingAddress(resultSet1.getString("shippingAddress"));
			shoppingCart.setSellerName(resultSet1.getString("sellerName"));
			shoppingCart.setPaymentConfirmation(resultSet1.getString("paymentConfirmation"));
			//shoppingCart.setRecieptConfirmation(resultSet1.getString("recieptConfirmation"));	
		}

	} catch (SQLException e) {
		System.out.println(e.getMessage());
	} finally {
		dbconn.close(resultSet1);
		dbconn.close(pst);
		dbconn.close(con);
	}
	shoppingCartItems=getItemsByCartId(shoppingCart);
	shoppingCart.setItemArray(shoppingCartItems);
	int j=0;
	int grandTotal=0,grandSubTotal=0,grandsShipmentCharges=0;
	while (j < shoppingCartItems.size()) {
		grandSubTotal=grandSubTotal+shoppingCartItems.get(j).getSubtotal();
		grandsShipmentCharges=grandsShipmentCharges+ shoppingCartItems.get(j).getShippingPrice();
			j++;	
	}
	grandTotal=grandSubTotal+grandsShipmentCharges;
	shoppingCart.setGrandTotal(grandTotal);
	shoppingCart.setGrandSubTotal(grandSubTotal);
	shoppingCart.setGrandsShipmentCharges(grandsShipmentCharges);
	shoppingCart=updateGrandTotal(shoppingCart);
	return shoppingCart;
}

public ShoppingCart updateGrandTotal(ShoppingCart shoppingCart){
	isSuccessful=0;
	 try {
			
			query1 = "UPDATE shoppingCart SET grandTotal=?, grandSubTotal=?, shipmentCharges=?  where cartId=? and paymentConfirmation=?";
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1, shoppingCart.getGrandTotal());
			pst.setInt(2, shoppingCart.getGrandSubTotal());
			pst.setInt(3, shoppingCart.getGrandsShipmentCharges());
			pst.setInt(4, shoppingCart.getCartId());
			pst.setString(5,"0");
			System.out.println(pst);
			isSuccessful = pst.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(pst);
			dbconn.close(con);
		}
		return shoppingCart;		
}


public void saveEditedShippingAddress(String Address, int cartId) {
	try {
		
		query1 = "UPDATE shoppingCart SET shippingAddress=? where cartId=?";
		dbconn = new DBconn();
		con = DBconn.getConnection();
		pst = con.prepareStatement(query1);
		pst.setString(1, Address);
		pst.setInt(2, cartId);
		
		
		System.out.println(pst);
		pst.executeUpdate();
	} catch (SQLException e) {
		System.out.println(e.getMessage());
	} finally {
		dbconn.close(pst);
		dbconn.close(con);
	}
}

}

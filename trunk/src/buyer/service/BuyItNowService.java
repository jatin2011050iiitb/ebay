package buyer.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import user.model.Product;

import buyer.model.ShoppingCart;
import buyer.model.ShoppingCartItem;

import ebay.util.DBconn;

public class BuyItNowService {
	private DBconn dbconn = null;
	private Connection con = null;
	private PreparedStatement pst = null;
	private ResultSet resultSet1 = null;
	private String query1 = null;
	private int isSuccessful = 0;

	public ShoppingCart createShoppingCart(Product product, int buyerId, String completeAddress) {
		ShoppingCart shoppingCart = new ShoppingCart();
		shoppingCart.setCartId(0);
		shoppingCart = isCartExisting(product, buyerId);
		if (shoppingCart.getCartId() == 0) {
			try {
				System.out.println("pid:" + product.getProductId());
				System.out.println("Sid:" + product.getSellerId());
				System.out.println("price" + product.getPrice());
				
				
				query1 = "INSERT into shoppingCart (buyerId,sellerId,sellerName,paymentConfirmation,shippingAddress) VALUES(?,?,?,?,?) ";
				dbconn = new DBconn();
				con = DBconn.getConnection();
				pst = con.prepareStatement(query1);
				pst.setInt(1, buyerId);
				pst.setInt(2, product.getSellerId());
				pst.setString(3,product.getSellerFName()+product.getSellerLName());
				pst.setString(4, "0");
				pst.setString(5, completeAddress);
				System.out.println(pst);
				isSuccessful = pst.executeUpdate();
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			} finally {
				dbconn.close(pst);
				dbconn.close(con);
			}

			if (isSuccessful == 1) {
				try {
					isSuccessful = 0;
					query1 = "SELECT * FROM shoppingCart where buyerId=? and sellerId=? and paymentConfirmation=?";
					dbconn = new DBconn();
					con = DBconn.getConnection();
					pst = con.prepareStatement(query1);
					pst.setInt(1, buyerId);
					pst.setInt(2, product.getSellerId());
					pst.setString(3, "0");
					System.out.println(pst);
					resultSet1 = pst.executeQuery();

					if (resultSet1.next()) {
						isSuccessful = 1;
						shoppingCart.setCartId(resultSet1.getInt("cartId"));
						shoppingCart.setBuyerId(resultSet1.getInt("buyerId"));
						shoppingCart.setSellerId(resultSet1.getInt("sellerId"));
						shoppingCart.setShippingAddress(resultSet1.getString("shippingAddress"));
						shoppingCart.setSellerName(resultSet1.getString("sellerName"));
					}

				} catch (SQLException e) {
					System.out.println(e.getMessage());
				} finally {
					dbconn.close(resultSet1);
					dbconn.close(pst);
					dbconn.close(con);
				}
			}
		}
		return shoppingCart;
	}

	public ShoppingCartItem getShoppingCartItem(ShoppingCart shoppingCart,Product product, int buyerId, int quantity) {
		ShoppingCartItem shoppingCartItem = new ShoppingCartItem();
		int subtotal=0;
		int isSuccessful = 0;
		int productExists=0;
		subtotal= product.getPrice()*quantity;
		productExists = isProductAlreadyInDB(shoppingCart,product,buyerId, quantity);
		if(productExists==0){ //0 means doesnt exist so insert it
				try {
					String sName= product.getSellerFName()+ " " + product.getSellerLName();
					query1 = "INSERT into shoppingCartItem (cartId,productId,productDesc,quantity,unitPrice,subtotal,shippingPrice,buyerId,sellerId,sellerName,itemDeselected) " +
							"VALUES(?,?,?,?,?,?,?,?,?,?,?)";
					dbconn = new DBconn();
					con = DBconn.getConnection();
					pst = con.prepareStatement(query1);
					pst.setInt(1, shoppingCart.getCartId());
					pst.setInt(2, product.getProductId());
					pst.setString(3, product.getProductDesc());
					pst.setInt(4, quantity);
					pst.setInt(5, product.getPrice());
					pst.setInt(6, subtotal);
					pst.setInt(7, product.getShipmentCharges());
					pst.setInt(8, buyerId);
					pst.setInt(9, product.getSellerId());
					pst.setString(10, sName);
					pst.setInt(11,0);
				
					System.out.println(pst);
					isSuccessful = pst.executeUpdate();
				} catch (SQLException e) {
					System.out.println(e.getMessage());
				} finally {
					dbconn.close(pst);
					dbconn.close(con);
				}
}	
		
			try {
				isSuccessful = 0;
				query1 = "SELECT * FROM shoppingCartItem where cartId=? and productId=? and buyerId=? and sellerId=?";
				dbconn = new DBconn();
				con = DBconn.getConnection();
				pst = con.prepareStatement(query1);
				pst.setInt(1, shoppingCart.getCartId());
				pst.setInt(2, product.getProductId());
				pst.setInt(3, buyerId);
				pst.setInt(4, product.getSellerId());
				System.out.println(pst);
				resultSet1 = pst.executeQuery();

				if (resultSet1.next()) {
					isSuccessful = 1;
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
				}

			} catch (SQLException e) {
				System.out.println(e.getMessage());
			} finally {
				dbconn.close(resultSet1);
				dbconn.close(pst);
				dbconn.close(con);
			}
		
		
		return shoppingCartItem;
}	

	public ShoppingCart isCartExisting(Product product, int buyerId) {
		ShoppingCart shoppingCart = new ShoppingCart();

		try {
			shoppingCart.setCartId(0);
			query1 = "SELECT * FROM shoppingCart where buyerId=? and sellerId=? and paymentConfirmation=?";
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1, buyerId);
			pst.setInt(2, product.getSellerId());
			pst.setString(3, "0");
			System.out.println(pst);
			resultSet1 = pst.executeQuery();

			if (resultSet1.next()) {

				shoppingCart.setCartId(resultSet1.getInt("cartId"));
				shoppingCart.setBuyerId(resultSet1.getInt("buyerId"));
				shoppingCart.setSellerId(resultSet1.getInt("sellerId"));
				System.out.println("cart id exists id="
						+ shoppingCart.getCartId());
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

	public ShoppingCart calcGrandTotalBuyItNow(ShoppingCart shoppingCart,
			ShoppingCartItem shoppingCartItem) {

		int grandTotal = shoppingCartItem.getSubtotal()
				+ (shoppingCartItem.getShippingPrice() * shoppingCartItem
						.getQuantity());
		isSuccessful = 0;
		try {

			query1 = "UPDATE shoppingCart SET grandTotal=? where cartId=? and paymentConfirmation=?";
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1, grandTotal);
			pst.setInt(2, shoppingCart.getCartId());
			pst.setString(3, "0");
			System.out.println(pst);
			isSuccessful = pst.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(pst);
			dbconn.close(con);
		}
		if (isSuccessful == 1) {
			shoppingCart.setGrandTotal(grandTotal); // this is short cut. you
													// could also write a select
													// query and set the grand
													// total ;)
		}
		return shoppingCart;
	}

	public int isProductAlreadyInDB(ShoppingCart shoppingCart, Product product,
			int buyerId, int quantity) {
		int productExists = 0;// 0 means not product doesnt exist
		try {
			query1 = "SELECT * FROM shoppingCartItem where cartId=? and productId=? ";// and
																						// itemDeselected=?
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1, shoppingCart.getCartId());
			pst.setInt(2, product.getProductId());
			/* pst.setInt(3,0); */
			System.out.println(pst);
			resultSet1 = pst.executeQuery();

			if (resultSet1.next()) {
				DBconn dbconn2 = null;
				Connection con2 = null;
				PreparedStatement pst2 = null;
				ResultSet resultSet2 = null;
				String query2 = null;

				try {
					int subtotal = 0;
					subtotal = product.getPrice() * quantity;
					query2 = "UPDATE shoppingCartItem SET subtotal=?, quantity=?,itemDeselected=? where cartId=? and productId=? ";
					dbconn2 = new DBconn();
					con2 = dbconn2.getConnection();
					pst2 = con2.prepareStatement(query2);
					pst2.setInt(1, subtotal);
					pst2.setInt(2, quantity);
					pst2.setInt(3, 0);
					pst2.setInt(4, shoppingCart.getCartId());
					pst2.setInt(5, product.getProductId());
					System.out.println(pst2);
					productExists = pst2.executeUpdate(); // product exists so isSuccessful=1
				} catch (SQLException e) {
					System.out.println(e.getMessage());
				} finally {
					dbconn2.close(pst2);
					dbconn2.close(con2);
				}
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}

		return productExists; //returns ( 0 if product doesnt exist) and (1 product exists)
	}

}

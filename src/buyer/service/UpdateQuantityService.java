package buyer.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import buyer.model.ShoppingCartItem;

import ebay.util.DBconn;

public class UpdateQuantityService {
	private DBconn dbconn = null;
	private Connection con = null;
	private PreparedStatement pst = null;
	//private ResultSet resultSet1 = null;
	private String query1 = null;
	private int isSuccessful = 0;
	
	public ShoppingCartItem updateSingleProductQuantity(ShoppingCartItem shoppingCartItem, int quantity){
		
		int subtotal=0;
		subtotal= shoppingCartItem.getUnitPrice()*quantity;
		BuyItNowService buyitnowservice = new BuyItNowService();
		int shippingCharges = buyitnowservice.getShippingChargesbyPolicy(shoppingCartItem.getProductId(), quantity);
		 try {
				
				query1 = "UPDATE shoppingCartItem SET subTotal=? , quantity=?, shippingPrice=? where cartItemId=? and itemDeselected=?";
				dbconn = new DBconn();
				con = DBconn.getConnection();
				pst = con.prepareStatement(query1);
				pst.setInt(1, subtotal);
				pst.setInt(2, quantity);
				pst.setInt(3, shippingCharges);
				pst.setInt(4, shoppingCartItem.getCartItemId());
				
				//pst.setInt(3, shoppingCartItem.getCartItemId());
				pst.setString(5,"0");
				System.out.println(pst);
				isSuccessful = pst.executeUpdate();
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			} finally {
				dbconn.close(pst);
				dbconn.close(con);
			}
			if(isSuccessful==1){
		 shoppingCartItem.setSubtotal(subtotal); // this is short cut. you could also write a select query and set the sub total ;)
			shoppingCartItem.setQuantity(quantity);
			shoppingCartItem.setShippingPrice(shippingCharges);
			}
		
	return shoppingCartItem;
	}

}

package seller.action;

import java.util.ArrayList;
import java.util.Map;

import seller.model.ShipmentCart;
import seller.service.ShipmentService;
import user.model.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ConfirmShipmentAction extends ActionSupport {
	private ShipmentCart shipmentCart;
	private int cartId;
	
	private User user;
	private int sellerId;
	
	private Map session;
	
	public String show() {
		
		// get the id of the seller
		session=ActionContext.getContext().getSession();
		user = (User) session.get("objectuser");
		sellerId = user.getUserId();
		
		ShipmentService shipmentService = new ShipmentService();

			setShipmentCart(new ShipmentCart());
			getShipmentCart().setCartId(getCartId());
			getShipmentCart().setShipmentCartDetails(shipmentService.getShipmentCartDetails(getCartId()));
			getShipmentCart().setShipmentItemList(shipmentService.getShipmentItems(getCartId()));

		return "success";
	}
	
	
	public String execute() {
		ShipmentService shipmentService = new ShipmentService();
		shipmentService.addShippingDetails(getShipmentCart());
		return "success";
	}


	public void setShipmentCart(ShipmentCart shipmentCart) {
		this.shipmentCart = shipmentCart;
	}


	public ShipmentCart getShipmentCart() {
		return shipmentCart;
	}


	public void setCartId(int cartId) {
		this.cartId = cartId;
	}


	public int getCartId() {
		return cartId;
	}
	
	
}

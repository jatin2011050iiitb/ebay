package seller.model;

import java.util.ArrayList;

public class ShipmentCart {
	private int cartId;
	private ShipmentCartDetails shipmentCartDetails;

	// arraylist to hold items to be shiped to a single buyer
	private ArrayList<ShipmentItem> shipmentItemList;

	
	public ShipmentCartDetails getShipmentCartDetails() {
		return shipmentCartDetails;
	}

	public void setShipmentCartDetails(ShipmentCartDetails shipmentCartDetails) {
		this.shipmentCartDetails = shipmentCartDetails;
	}

	public ArrayList<ShipmentItem> getShipmentItemList() {
		return shipmentItemList;
	}

	public void setShipmentItemList(ArrayList<ShipmentItem> shipmentItemList) {
		this.shipmentItemList = shipmentItemList;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getCartId() {
		return cartId;
	}
	
	
}

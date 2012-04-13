package seller.model;

public class ShipmentCartDetails {
	// parameters showed in shipment cart
	private int cartId;
	private int buyerId;
	private String buyerName;
	private int total;
	
	// parameters filled by seller
	private String shipmentCompany;
	private int shipmentId;
	private int ETD;
	private String shipmentAddress;
	
	
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(int buyerId) {
		this.buyerId = buyerId;
	}
	public String getBuyerName() {
		return buyerName;
	}
	public void setBuyerName(String buyerName) {
		this.buyerName = buyerName;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public String getShipmentCompany() {
		return shipmentCompany;
	}
	public void setShipmentCompany(String shipmentCompany) {
		this.shipmentCompany = shipmentCompany;
	}
	public int getShipmentId() {
		return shipmentId;
	}
	public void setShipmentId(int shipmentId) {
		this.shipmentId = shipmentId;
	}
	public int getETD() {
		return ETD;
	}
	public void setETD(int eTD) {
		ETD = eTD;
	}
	public String getShipmentAddress() {
		return shipmentAddress;
	}
	public void setShipmentAddress(String shipmentAddress) {
		this.shipmentAddress = shipmentAddress;
	}
	
	
	
	
}

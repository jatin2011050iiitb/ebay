package buyer.model;

import java.sql.Timestamp;

public class ShoppingCart {
	private int cartId;// 
	private int grandTotal; 
	private int buyerId;
	private int sellerId;
	private int paymentConfirmation; // ENUM('0','1','-1') (0=unpaid 1=success -1=failure)
	private int recieptConfirmation; // ENUM('1','2')       (1=recieved 2=not recieved)
	private Timestamp paymentTS;
	////////////
	private String courierCompany;
	private String shippingAddress;
	private int shipmentCharges;
	private String ETD; 		// ETA=Estimated time of delivary for Ex. 5days, 3 days etc
	private int shipmentStatus; //    ENUM(0,1,2)=('processing','shipped','delivered'),
	
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getGrandTotal() {
		return grandTotal;
	}
	public void setGrandTotal(int grandTotal) {
		this.grandTotal = grandTotal;
	}
	public int getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(int buyerId) {
		this.buyerId = buyerId;
	}
	public int getSellerId() {
		return sellerId;
	}
	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}
	public int getPaymentConfirmation() {
		return paymentConfirmation;
	}
	public void setPaymentConfirmation(int paymentConfirmation) {
		this.paymentConfirmation = paymentConfirmation;
	}
	public int getRecieptConfirmation() {
		return recieptConfirmation;
	}
	public void setRecieptConfirmation(int recieptConfirmation) {
		this.recieptConfirmation = recieptConfirmation;
	}
	public Timestamp getPaymentTS() {
		return paymentTS;
	}
	public void setPaymentTS(Timestamp paymentTS) {
		this.paymentTS = paymentTS;
	}
	public String getCourierCompany() {
		return courierCompany;
	}
	public void setCourierCompany(String courierCompany) {
		this.courierCompany = courierCompany;
	}
	public String getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(String shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	public int getShipmentCharges() {
		return shipmentCharges;
	}
	public void setShipmentCharges(int shipmentCharges) {
		this.shipmentCharges = shipmentCharges;
	}
	public String getETD() {
		return ETD;
	}
	public void setETD(String eTD) {
		ETD = eTD;
	}
	public int getShipmentStatus() {
		return shipmentStatus;
	}
	public void setShipmentStatus(int shipmentStatus) {
		this.shipmentStatus = shipmentStatus;
	} 
	
}

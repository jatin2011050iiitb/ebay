package buyer.model;

import java.sql.Timestamp;
import java.util.ArrayList;

public class ShoppingCart {
	private ArrayList<ShoppingCartItem> itemArray;

	
	private int cartId;// 
	private int grandTotal; 
	private int grandSubTotal;
	private int grandsShipmentCharges;
	private int buyerId;
	private int sellerId;
	private String sellerName;
	private String paymentConfirmation; // ENUM('0','1','-1') (0=unpaid 1=success -1=failure)
	private String recieptConfirmation; // ENUM('1','2')       (1=recieved 2=not recieved)
	private Timestamp paymentTS;
	
	//////////// seller will enter details below. not for display by bank.
	private String courierCompany;
	private String shippingAddress;
	private String ETD; 		// ETA=Estimated time of delivary for Ex. 5days, 3 days etc
	private String shipmentStatus; //    ENUM(0,1,2)=('processing','shipped','delivered'),
	
	public String getSellerName() {
		return sellerName;
	}
	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}
	
	
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
	
	public String getPaymentConfirmation() {
		return paymentConfirmation;
	}
	public void setPaymentConfirmation(String paymentConfirmation) {
		this.paymentConfirmation = paymentConfirmation;
	}
	
	public String getRecieptConfirmation() {
		return recieptConfirmation;
	}
	public void setRecieptConfirmation(String recieptConfirmation) {
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

	public String getETD() {
		return ETD;
	}
	public void setETD(String eTD) {
		ETD = eTD;
	}
	
	public String getShipmentStatus() {
		return shipmentStatus;
	}
	public void setShipmentStatus(String shipmentStatus) {
		this.shipmentStatus = shipmentStatus;
	}
	public ArrayList<ShoppingCartItem> getItemArray() {
		return itemArray;
	}
	public void setItemArray(ArrayList<ShoppingCartItem> itemArray) {
		this.itemArray = itemArray;
	}
	public int getGrandsShipmentCharges() {
		return grandsShipmentCharges;
	}
	public void setGrandsShipmentCharges(int grandsShipmentCharges) {
		this.grandsShipmentCharges = grandsShipmentCharges;
	}
	public int getGrandSubTotal() {
		return grandSubTotal;
	}
	public void setGrandSubTotal(int grandSubTotal) {
		this.grandSubTotal = grandSubTotal;
	} 
	
}

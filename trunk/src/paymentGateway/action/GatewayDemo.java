package paymentGateway.action;

import com.opensymphony.xwork2.ActionSupport;

public class GatewayDemo extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int buyerId;
	private int sellerId;
	private int cartId;
	private int shippingCharge;
	private int amount;
	private int totalAmount;
	private String productName;
	
	public String execute(){
		
		setSellerId(1);
		setBuyerId(2);
		setCartId(3);
		setAmount(1200);
		setShippingCharge(50);
		setTotalAmount(1250);	
		setProductName("Demo Product");
		return SUCCESS;
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
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}




	public int getShippingCharge() {
		return shippingCharge;
	}




	public void setShippingCharge(int shippingCharge) {
		this.shippingCharge = shippingCharge;
	}




	public int getTotalAmount() {
		return totalAmount;
	}




	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}

}

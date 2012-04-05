package user.model;
import java.sql.Timestamp;
public class Product {
	private int productId; 
	private int auctionId;
	private String productDesc;
	private int sellerId;
	private int saleType;
	private String saleTypeDesc;
	private String  prodCondition;
	private Timestamp startDate;
	private Timestamp endDate;
	private Timestamp TimeRemaining;
	private String shipmentState;
	private int shipmentCharges;
	private int stock;
	private int price;
	
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public void setAuctionId(int auctionId) {
		this.auctionId = auctionId;
	}
	public int getAuctionId() {
		return auctionId;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	public int getSellerId() {
		return sellerId;
	}
	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}
	public int getSaleType() {
		return saleType;
	}
	public void setSaleType(int saleType) {
		this.saleType = saleType;
	}
	public String getSaleTypeDesc() {
		return saleTypeDesc;
	}
	public void setSaleTypeDesc(String saleTypeDesc) {
		this.saleTypeDesc = saleTypeDesc;
	}
	public String getProdCondition() {
		return prodCondition;
	}
	public void setProdCondition(String prodCondition) {
		this.prodCondition = prodCondition;
	}
	public Timestamp getStartDate() {
		return startDate;
	}
	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}
	public Timestamp getEndDate() {
		return endDate;
	}
	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}
	public String getShipmentState() {
		return shipmentState;
	}
	public void setShipmentState(String shipmentState) {
		this.shipmentState = shipmentState;
	}
	public int getShipmentCharges() {
		return shipmentCharges;
	}
	public void setShipmentCharges(int shipmentCharges) {
		this.shipmentCharges = shipmentCharges;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Timestamp getTimeRemaining() {
		return TimeRemaining;
	}
	public void setTimeRemaining(Timestamp timeRemaining) {
		TimeRemaining = timeRemaining;
	}
	
	
	
	
	 
}

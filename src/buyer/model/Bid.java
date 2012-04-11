package buyer.model;

import java.sql.Timestamp;

public class Bid {
	private int productId;
	
	private int auctionId;
	
	private String productDesc;
	
	private int bidValue;
	
	private Timestamp bidTime;
	
	private int bidderId;
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getAuctionId() {
		return auctionId;
	}
	public void setAuctionId(int auctionId) {
		this.auctionId = auctionId;
	}
	public int getBidValue() {
		return bidValue;
	}
	public void setBidValue(int bidValue) {
		this.bidValue = bidValue;
	}
	public Timestamp getBidTime() {
		return bidTime;
	}
	public void setBidTime(Timestamp bidTime) {
		this.bidTime = bidTime;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setBidderId(int bidderId) {
		this.bidderId = bidderId;
	}
	public int getBidderId() {
		return bidderId;
	}
	
	
}

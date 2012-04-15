package seller.model;

public class AuctionProduct {
	private int productId;
	private int basePrice;
	private int stepPrice;
	private int highestBidPrice;
	private int finalBidderId;
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getBasePrice() {
		return basePrice;
	}
	public void setBasePrice(int basePrice) {
		this.basePrice = basePrice;
	}
	public int getStepPrice() {
		return stepPrice;
	}
	public void setStepPrice(int stepPrice) {
		this.stepPrice = stepPrice;
	}
	public int getHighestBidPrice() {
		return highestBidPrice;
	}
	public void setHighestBidPrice(int highestBidPrice) {
		this.highestBidPrice = highestBidPrice;
	}
	public int getFinalBidderId() {
		return finalBidderId;
	}
	public void setFinalBidderId(int finalBidderId) {
		this.finalBidderId = finalBidderId;
	}

}

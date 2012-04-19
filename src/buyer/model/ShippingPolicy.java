package buyer.model;

public class ShippingPolicy {
	private int productId;
	private int flatshippingQuantity;
	private int flatshippingRate;
	private int perPieceshippingQuantity;
	private int perPieceshippingRate;
	private int freeshippingQuantity;
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getFlatshippingQuantity() {
		return flatshippingQuantity;
	}
	public void setFlatshippingQuantity(int flatshippingQuantity) {
		this.flatshippingQuantity = flatshippingQuantity;
	}
	public int getFlatshippingRate() {
		return flatshippingRate;
	}
	public void setFlatshippingRate(int flatshippingRate) {
		this.flatshippingRate = flatshippingRate;
	}
	public int getPerPieceshippingQuantity() {
		return perPieceshippingQuantity;
	}
	public void setPerPieceshippingQuantity(int perPieceshippingQuantity) {
		this.perPieceshippingQuantity = perPieceshippingQuantity;
	}
	public int getPerPieceshippingRate() {
		return perPieceshippingRate;
	}
	public void setPerPieceshippingRate(int perPieceshippingRate) {
		this.perPieceshippingRate = perPieceshippingRate;
	}
	public int getFreeshippingQuantity() {
		return freeshippingQuantity;
	}
	public void setFreeshippingQuantity(int freeshippingQuantity) {
		this.freeshippingQuantity = freeshippingQuantity;
	}
	
	
}

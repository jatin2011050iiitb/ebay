package seller.model;

public class ShipmentItem {
	private int productId;
	private String productDesc;
	private int quantityToShip;
	
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setQuantityToShip(int quantityToShip) {
		this.quantityToShip = quantityToShip;
	}
	public int getQuantityToShip() {
		return quantityToShip;
	}
	
	
}

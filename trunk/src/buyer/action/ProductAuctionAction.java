package buyer.action;

import java.sql.Timestamp;
import java.util.Map;

import org.apache.tomcat.jni.Time;

import user.model.Product;
import user.model.User;
import user.service.ProductService;

import buyer.model.Bid;
import buyer.service.AuctionService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ProductAuctionAction extends ActionSupport {

	// variables maintained in session
	private Product product;
	private User buyer;
	
	// variables from Product Auction page
	private int startingBid;
	private int placedBid;
	
	// varibales to display bid summary in Bid summary page
	private Bid bidBean;
	private int maxBid;
	
	private Map session;
	
	
	public String execute() {
		
		AuctionService auctionService = new AuctionService();
		
		session=ActionContext.getContext().getSession();
		buyer = (User) session.get("objectuser");
		product = (Product) session.get("SessionProduct");
		
		
		System.out.println("placedbid="+ getPlacedBid());
		System.out.println("product id="+product.getProductId());
		System.out.println("buyer id=" + buyer.getUserId());
		
		if(auctionService.isBidTimeout(product.getProductId())) {
			System.out.println("bid timedout");
			return "failure";
		}
		else {
			auctionService.setBid(product.getAuctionId(), buyer.getUserId(), getPlacedBid());
			// A trigger is called after above statement to update the highest bid. trigger name: update_highest_bid
			System.out.println("bid successful");
			
			// create a bidBean to display bid summary to buyer
			setBidBean(new Bid());
			getBidBean().setAuctionId(product.getAuctionId());
			getBidBean().setProductId(product.getProductId());
			getBidBean().setProductDesc(product.getProductDesc());
			getBidBean().setBidValue(getPlacedBid());
			getBidBean().setBidTime(auctionService.getTimestamp(product.getAuctionId(), buyer.getUserId()));
			
			// to display the current highest bid
			setMaxBid(auctionService.getMaxBid(product.getAuctionId()));
			
			ProductService productService = new ProductService();
			product = productService.getProduct(product.getProductId());
			session.put("SessionProduct", product);
			
			return "success";
			
		}
		
		
	}

	public void setStartingBid(int startingBid) {
		this.startingBid = startingBid;
	}

	public int getStartingBid() {
		return startingBid;
	}

	

	public void setProduct(Product product) {
		this.product = product;
	}

	public Product getProduct() {
		return product;
	}

	public void setPlacedBid(String placedBid) {
		this.placedBid = Integer.parseInt(placedBid);
	}

	public int getPlacedBid() {
		return placedBid;
	}

	public void setMaxBid(int maxBid) {
		this.maxBid = maxBid;
	}

	public int getMaxBid() {
		return maxBid;
	}

	public void setBidBean(Bid bidBean) {
		this.bidBean = bidBean;
	}

	public Bid getBidBean() {
		return bidBean;
	}

	
	

	

	

	
}

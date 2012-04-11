package buyer.action;

import java.util.ArrayList;
import java.util.Map;

import user.model.Product;

import buyer.model.Bid;
import buyer.service.AuctionService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ShowBidHistory extends ActionSupport {
	private ArrayList<Bid> bidHistoryList;
	
	private Product product;
	
	private Map session;
	
	public String execute() {
		session=ActionContext.getContext().getSession();
		setProduct((Product) session.get("SessionProduct"));
		
		AuctionService auctionService = new AuctionService();
		setBidHistoryList(auctionService.getBiddingHistory(getProduct().getAuctionId()));
		
		return "success";
	}

	public void setBidHistoryList(ArrayList<Bid> bidHistoryList) {
		this.bidHistoryList = bidHistoryList;
	}

	public ArrayList<Bid> getBidHistoryList() {
		return bidHistoryList;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Product getProduct() {
		return product;
	}
}

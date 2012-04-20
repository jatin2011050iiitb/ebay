package user.action;

import user.model.SellerRating;
import user.service.SellerRatingService;
import com.opensymphony.xwork2.ActionSupport;

public class SellerRatingAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private int sellerId;
	private int averageRating;
	private int userVotes;
	private int currentRate;
	private SellerRating sellerRating;
	
	
	public String execute(){
		SellerRatingService sellerRatingService = new SellerRatingService();
		setSellerRating(sellerRatingService.getSellerAverageRating(sellerId));
		return "success";
	}

	public String submitRate(){
		SellerRatingService sellerRatingService = new SellerRatingService();
		setSellerRating(sellerRatingService.getSellerAverageRating(sellerId));
		int flag = sellerRatingService.setAverageRating(sellerId, currentRate, getSellerRating());
		if (flag==1)
			return "success";
		else
			return "error";
	}
	
/****************************************************************************************************************
 * 	ALL GETTER SETTERS
 *****************************************************************************************************************/

	public int getCurrentRate() {
	return currentRate;
}
public SellerRating getSellerRating() {
	return sellerRating;
}

public void setSellerRating(SellerRating sellerRating) {
	this.sellerRating = sellerRating;
}

public void setCurrentRate(int currentRate) {
	this.currentRate = currentRate;
}

	public int getSellerId() {
		return sellerId;
	}
	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}
	public int getAverageRating() {
		return averageRating;
	}
	public void setAverageRating(int averageRating) {
		this.averageRating = averageRating;
	}
	public int getUserVotes() {
		return userVotes;
	}
	public void setUserVotes(int userVotes) {
		this.userVotes = userVotes;
	}
	
}

package user.model;

public class SellerRating {
	private int sellerId;
	private int averageRating;
	private int userVotes;
	
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

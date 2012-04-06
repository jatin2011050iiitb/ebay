package paymentGateway.model;

public class PPayAccInfo {
	
	private int PPayAccId; 
	private int ebayUserId;
	private int bankId; 
	private int accNo;
	private int PPayBalance;
	private int rating;
	
	
	public int getPPayAccId() {
		return PPayAccId;
	}
	public void setPPayAccId(int pPayAccId) {
		PPayAccId = pPayAccId;
	}
	public int getEbayUserId() {
		return ebayUserId;
	}
	public void setEbayUserId(int ebayUserId) {
		this.ebayUserId = ebayUserId;
	}
	public int getBankId() {
		return bankId;
	}
	public void setBankId(int bankId) {
		this.bankId = bankId;
	}
	public int getAccNo() {
		return accNo;
	}
	public void setAccNo(int accNo) {
		this.accNo = accNo;
	}
	public int getPPayBalance() {
		return PPayBalance;
	}
	public void setPPayBalance(int pPayBalance) {
		PPayBalance = pPayBalance;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}

}

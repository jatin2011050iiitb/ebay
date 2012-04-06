package paymentGateway.model;

import java.sql.Timestamp;

public class PPTransaction {
	
	private int transactionId;
	private int buyerId;
	private int sellerId;
	private int cartId;
	private int accNo;
	private int bankId;
	private int PPayAccId;
	private String paymentType;
	private int amount;
	private Timestamp pRecvTS;
	private Timestamp pPaidTS;
	private Timestamp pCancelTS;
	private String status;
	public int getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}
	public int getBuyerId() {
		return buyerId;
	}
	public void setBuyerId(int buyerId) {
		this.buyerId = buyerId;
	}
	public int getSellerId() {
		return sellerId;
	}
	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getAccNo() {
		return accNo;
	}
	public void setAccNo(int accNo) {
		this.accNo = accNo;
	}
	public int getBankId() {
		return bankId;
	}
	public void setBankId(int bankId) {
		this.bankId = bankId;
	}
	public int getPPayAccId() {
		return PPayAccId;
	}
	public void setPPayAccId(int pPayAccId) {
		PPayAccId = pPayAccId;
	}
	public String getPaymentType() {
		return paymentType;
	}
	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Timestamp getpRecvTS() {
		return pRecvTS;
	}
	public void setpRecvTS(Timestamp pRecvTS) {
		this.pRecvTS = pRecvTS;
	}
	public Timestamp getpPaidTS() {
		return pPaidTS;
	}
	public void setpPaidTS(Timestamp pPaidTS) {
		this.pPaidTS = pPaidTS;
	}
	public Timestamp getpCancelTS() {
		return pCancelTS;
	}
	public void setpCancelTS(Timestamp pCancelTS) {
		this.pCancelTS = pCancelTS;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

}

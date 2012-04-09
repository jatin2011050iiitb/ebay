package paymentGateway.action;

import java.util.Date;
import java.sql.Timestamp;

import paymentGateway.model.BankAccount;
import paymentGateway.model.PPTransaction;
import paymentGateway.model.PPayAccInfo;
import paymentGateway.model.PPayTransfer;
import paymentGateway.service.BankService;
import paymentGateway.service.PPayService;

import com.opensymphony.xwork2.ActionSupport;

public class DebitCardPayment extends ActionSupport{
	
	private int buyerId;
	private int sellerId;
	private int cartId;
	private int shippingCharge;
	private int amount;
	private int totalAmount;
	private String productName;
	private String submit;
	private int bankId;
	private Long debitCardNo;
	private int debitCardVerfNo;
	private int transactionId;
	
	public String execute(){
		
		
		if(submit==null){
			
			return "showEnterDetails";
		}
		if(submit.equals("ConfirmPayment")){
			int result = 0;
			System.out.println(getDebitCardNo());
			System.out.println(getDebitCardVerfNo());
			BankService bs = new BankService();
			BankAccount ba = new BankAccount();
			ba = bs.getDebitCardDetails(getBankId(), getDebitCardNo(), getDebitCardVerfNo());
			if(ba.getDebitCardVerfNo()== getDebitCardVerfNo()){
				System.out.println("CVV Match");
				
				result = bs.debitCardPayment(ba, getTotalAmount());
				if(result ==1){
				
					PPayService ps = new PPayService();
					PPayAccInfo pi = new PPayAccInfo();
					pi=ps.getPPayAccInfoByEbayUserId(getSellerId());
					//java.util.Date dt = new java.util.Date();
					//java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					PPTransaction ppt = new PPTransaction(getBuyerId(), getSellerId(),getCartId(), ba.getAccNo(), ba.getBankId(),pi.getPPayAccId(),"debitcard",getTotalAmount(),new Timestamp(new Date().getTime()), "paymentRecieved");
					//PPTransaction ppt = new PPTransaction(getBuyerId(), getSellerId(),getCartId(), ba.getAccNo(), ba.getBankId(),pi.getPPayAccId(),"debitcard",getTotalAmount(),sdf.format(dt), "paymentRecieved");
					int commitresult=ps.commitPPTransaction(ppt);
					
					if(commitresult ==1){
						
						transactionId = ps.getTransactionId(getCartId(), getSellerId());
						PPayTransfer pt = new PPayTransfer(transactionId, pi.getPPayAccId(), getTotalAmount(),0);
						
						int insertStagingResult = ps.commitPPayTransferStaging(pt);
						
						return "showPaymentSuccess";
						
					}
				
				
				
				}
				
				
				
			}
			return "success";
		}
		
		return "showEnterDetails";
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

	public int getShippingCharge() {
		return shippingCharge;
	}

	public void setShippingCharge(int shippingCharge) {
		this.shippingCharge = shippingCharge;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getSubmit() {
		return submit;
	}

	public void setSubmit(String submit) {
		this.submit = submit;
	}

	public int getBankId() {
		return bankId;
	}

	public void setBankId(int bankId) {
		this.bankId = bankId;
	}

	public Long getDebitCardNo() {
		return debitCardNo;
	}

	public void setDebitCardNo(Long debitCardNo) {
		this.debitCardNo = debitCardNo;
	}

	public int getDebitCardVerfNo() {
		return debitCardVerfNo;
	}

	public void setDebitCardVerfNo(int debitCardVerfNo) {
		this.debitCardVerfNo = debitCardVerfNo;
	}

	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}

	public int getTransactionId() {
		return transactionId;
	}

}

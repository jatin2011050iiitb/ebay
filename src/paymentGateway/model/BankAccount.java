package paymentGateway.model;

public class BankAccount {
	
	private int bankId;
	private int accNo;
	private String accHolder;
	private Long creditCardNo;
	private int creditCardVerfNo;
	private Long debitCardNo;
	private int debitCardVerfNo;
	private int NEFTcode;
	private int accBalance;
	private int creditPermited;
	
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
	public String getAccHolder() {
		return accHolder;
	}
	public void setAccHolder(String accHolder) {
		this.accHolder = accHolder;
	}
	public Long getCreditCardNo() {
		return creditCardNo;
	}
	public void setCreditCardNo(Long creditCardNo) {
		this.creditCardNo = creditCardNo;
	}
	
	public Long getDebitCardNo() {
		return debitCardNo;
	}
	public void setDebitCardNo(Long debitCardNo) {
		this.debitCardNo = debitCardNo;
	}
	
	public int getNEFTcode() {
		return NEFTcode;
	}
	public void setNEFTcode(int nEFTcode) {
		NEFTcode = nEFTcode;
	}
	public int getAccBalance() {
		return accBalance;
	}
	public void setAccBalance(int accBalance) {
		this.accBalance = accBalance;
	}
	public int getCreditPermited() {
		return creditPermited;
	}
	public void setCreditPermited(int creditPermited) {
		this.creditPermited = creditPermited;
	}
	public void setCreditCardVerfNo(int creditCardVerfNo) {
		this.creditCardVerfNo = creditCardVerfNo;
	}
	public int getCreditCardVerfNo() {
		return creditCardVerfNo;
	}
	public void setDebitCardVerfNo(int debitCardVerfNo) {
		this.debitCardVerfNo = debitCardVerfNo;
	}
	public int getDebitCardVerfNo() {
		return debitCardVerfNo;
	}
	

}

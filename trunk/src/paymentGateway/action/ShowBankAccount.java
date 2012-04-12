package paymentGateway.action;

import com.opensymphony.xwork2.ActionSupport;

import paymentGateway.model.BankAccount;
import paymentGateway.service.BankService;

public class ShowBankAccount extends ActionSupport{
	private int bankId;
	private int accNo;
	private String submit;
	private String selectedBank;
	private BankAccount ba;
	private String accHolder;
	private Long creditCardNo;
	private int creditCardVerfNo;
	private Long debitCardNo;
	private int debitCardVerfNo;
	private int NEFTcode;
	private int accBalance;
	private int creditPermited;
	private String imageSrc;
	
	public String execute(){
		
		if(submit == null || selectedBank == null){
			
			ba = new BankAccount();
			return "ShowDetails";			
		}
		else{
			BankService bs = new BankService();
			ba = new BankAccount();
			try{
			setBankId(bs.getBankId(selectedBank));
			if(bankId==1){
				setImageSrc("images_page/SyndicateBank.jpg");
			}
			else{
				setImageSrc("images_page/sbi_logo.gif");
			}
			ba = bs.validateAccountWithoutPassword(bankId, accNo);
			
			if(ba.getAccNo()!=0){
				setAccHolder(ba.getAccHolder());
				setAccBalance(ba.getAccBalance());
				setCreditCardNo(ba.getCreditCardNo());
				setDebitCardNo(ba.getDebitCardNo());
				setCreditPermited(ba.getCreditPermited());
				setNEFTcode(ba.getNEFTcode());}
			else{

				addActionError("Invalid Details!!! Please re - enter Correct Details");
			}
			}
			catch(Exception e){
				addActionError("Invalid Details!!! Please re - enter Correct Details");
				setAccNo(0);
			}
			setSubmit(null);
			return "ShowDetails";
			
		}
		
		
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

	public String getSubmit() {
		return submit;
	}

	public void setSubmit(String submit) {
		this.submit = submit;
	}

	public String getSelectedBank() {
		return selectedBank;
	}

	public void setSelectedBank(String selectedBank) {
		this.selectedBank = selectedBank;
	}

	public BankAccount getBa() {
		return ba;
	}

	public void setBa(BankAccount ba) {
		this.ba = ba;
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

	public int getCreditCardVerfNo() {
		return creditCardVerfNo;
	}

	public void setCreditCardVerfNo(int creditCardVerfNo) {
		this.creditCardVerfNo = creditCardVerfNo;
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

	public String getImageSrc() {
		return imageSrc;
	}


	public void setImageSrc(String imageSrc) {
		this.imageSrc = imageSrc;
	}

}

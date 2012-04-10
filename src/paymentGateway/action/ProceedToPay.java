package paymentGateway.action;

import java.util.Map;

import javax.swing.plaf.basic.BasicInternalFrameTitlePane.SystemMenuBar;

import paymentGateway.service.BankService;
import user.model.Loggedin;

import buyer.model.ShoppingCart;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ProceedToPay extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int buyerId;
	private int sellerId;
	private int cartId;
	private int shippingCharge;
	private int amount;
	private int totalAmount;
	private String productName;
	private String submit;
	private String paymentOption;
	private String selectedBank;
	private int bankId;

	public String execute() {

		try {

			Map session = ActionContext.getContext().getSession();
			Loggedin logged = new Loggedin();
			logged = (Loggedin) session.get("Loggedin");

			if (logged.getStatus() == 1) {

				ShoppingCart sc = (ShoppingCart) session.get("SessionCarts");
				setBuyerId(sc.getBuyerId());
				setSellerId(sc.getSellerId());
				setCartId(sc.getCartId());
				setTotalAmount(sc.getGrandTotal());
				setShippingCharge(sc.getShipmentCharges());
				setAmount(sc.getGrandTotal() - sc.getShipmentCharges());

				if (submit.equals("ProceedToPay")) {

					return "showPaymentOptions";
				}
				if (submit.equals("Proceed")) {

					if (paymentOption.equals("DebitCard")) {
						BankService bs = new BankService();
						setBankId(bs.getBankId(selectedBank));
						System.out.println(bankId);
						return "showDebitCardPayment";
					}
					if (paymentOption.equals("CreditCard")) {
						BankService bs = new BankService();
						setBankId(bs.getBankId(selectedBank));
						System.out.println(bankId);
						return "showCreditCardPayment";
					}
					if (paymentOption.equals("NetBanking")) {
						BankService bs = new BankService();
						setBankId(bs.getBankId(selectedBank));
						System.out.println(bankId);
						return "showNetBankingPayment";
					}
					
					addActionError("Please Select An Option to proceed!!");
					return "showPaymentOptions";
					

				}

			} else {
				addActionError("Please Login to Continue");
				return "showLoginPage";
			}
		} catch (Exception e) {
			addActionError("Please Login to Continue");
			return "showLoginPage";
		}

		addActionError("Please Login to Continue");
		return "showLoginPage";
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

	public String getPaymentOption() {
		return paymentOption;
	}

	public void setPaymentOption(String paymentOption) {
		this.paymentOption = paymentOption;
	}

	public String getSelectedBank() {
		return selectedBank;
	}

	public void setSelectedBank(String selectedBank) {
		this.selectedBank = selectedBank;
	}

	public int getBankId() {
		return bankId;
	}

	public void setBankId(int bankId) {
		this.bankId = bankId;
	}

}

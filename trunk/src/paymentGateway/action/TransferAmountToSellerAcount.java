package paymentGateway.action;

import paymentGateway.model.BankAccount;
import paymentGateway.model.PPTransaction;
import paymentGateway.model.PPayAccInfo;
import paymentGateway.service.BankService;
import paymentGateway.service.PPayService;

import com.opensymphony.xwork2.ActionSupport;

public class TransferAmountToSellerAcount extends ActionSupport{
	
	private int cartId;
	
	public String execute(){
		
		PPayService ps = new PPayService();
		
		System.out.println(getCartId());
		
		PPTransaction thisTran = ps.getDetailsByCartId(getCartId());
		
		System.out.println(thisTran.getSellerId());
		System.out.println(thisTran.getAmount());
		
		PPayAccInfo pi = ps.getPPayAccInfoByEbayUserId(thisTran.getSellerId());
		
		BankService bs = new BankService();
		
		System.out.println(pi.getBankId());
		System.out.println(pi.getAccNo());
		
		BankAccount ba = bs.validateAccountWithoutPassword(pi.getBankId(), pi.getAccNo());
		int result = bs.updateBankAccount(thisTran.getAmount(),ba);
		
		System.out.println(result);
		
		if(result == 1){
			
			thisTran.setStatus("paidToSellerPPacc");
			result = ps.commitPPTransaction(thisTran);
		
			System.out.println(result);
		}
		
		return SUCCESS;
		
		
		
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	

}

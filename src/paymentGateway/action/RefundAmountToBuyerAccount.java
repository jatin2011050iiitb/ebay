package paymentGateway.action;

import java.sql.Timestamp;
import java.util.Date;

import paymentGateway.model.BankAccount;
import paymentGateway.model.PPTransaction;
import paymentGateway.model.PPayAccInfo;
import paymentGateway.service.BankService;
import paymentGateway.service.PPayService;

import com.opensymphony.xwork2.ActionSupport;

public class RefundAmountToBuyerAccount extends ActionSupport{

	private int cartId;
	
	public String execute(){
		
		PPayService ps = new PPayService();
		System.out.println(getCartId());
		
		PPTransaction thisTran = ps.getDetailsByCartId(getCartId());
		
		System.out.println(thisTran.getSellerId());
		System.out.println(thisTran.getAmount());
		
		BankService bs = new BankService();
		
		System.out.println(thisTran.getBankId());
		System.out.println(thisTran.getAccNo());
		
		BankAccount ba = bs.validateAccountWithoutPassword(thisTran.getBankId(), thisTran.getAccNo());
		int result = bs.updateBankAccount(thisTran.getAmount(),ba);
		
		System.out.println(result);
		
		if(result == 1){
			
			thisTran.setStatus("refund");
			thisTran.setPCancelTS(new Timestamp(new Date().getTime()));
			result = ps.commitPPTransaction(thisTran);
		
			System.out.println(result);
		}
		
		return SUCCESS;
		
		
		
	}
	
	
/* GETTER SETTER
 * 	
 */
	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	
	
}

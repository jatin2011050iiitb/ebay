package paymentGateway.action;

import java.util.ArrayList;

import paymentGateway.model.PPTransaction;
import paymentGateway.service.PPayService;

import com.opensymphony.xwork2.ActionSupport;

public class ShowPaisaPayAccount extends ActionSupport {
	
	private ArrayList<PPTransaction> ppt;
	
	public String execute (){
		
		PPayService ps = new PPayService();
		setPpt(ps.getAllPPTransactions());
		return SUCCESS;
		
	}

	public ArrayList<PPTransaction> getPpt() {
		return ppt;
	}

	public void setPpt(ArrayList<PPTransaction> ppt) {
		this.ppt = ppt;
	}

}

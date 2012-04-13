package seller.action;

import java.util.ArrayList;
import java.util.Map;

import paymentGateway.model.Bank;
import paymentGateway.model.BankAccount;
import seller.service.MyPaisaPayRegisterService;
import user.model.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class MyPaisaPayRegister extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	ArrayList<Bank> bankList = new ArrayList<Bank>();
	private int bankIdSelected; 
	private int bankAcc;
	private User user;
	

	public String show(){
		MyPaisaPayRegisterService myPaisaPayRegisterService =new MyPaisaPayRegisterService();
		setBankList(myPaisaPayRegisterService.populateBank());
		return "success";
	}
	
	
	public String execute(){
	
	Map session = ActionContext.getContext().getSession();
	user =(User) session.get("objectuser");
		System.out.println("bank acc="+bankAcc);
		System.out.println("bank id="+bankIdSelected);
	BankAccount bankAccount =new BankAccount();
	bankAccount.setAccNo(bankAcc);
	bankAccount.setBankId(bankIdSelected);
	MyPaisaPayRegisterService myPaisaPayRegisterService = new MyPaisaPayRegisterService();
	myPaisaPayRegisterService.RegisterPaisaPay(bankAccount,user.getUserId());
	
		return "success";
	}
	
	
	
	public ArrayList<Bank> getBankList() {
		return bankList;
	}

	public void setBankList(ArrayList<Bank> bankList) {
		this.bankList = bankList;
	}

	public int getBankIdSelected() {
		return bankIdSelected;
	}

	public void setBankIdSelected(int bankIdSelected) {
		this.bankIdSelected = bankIdSelected;
	}

	public int getBankAcc() {
		return bankAcc;
	}

	public void setBankAcc(int bankAcc) {
		this.bankAcc = bankAcc;
	}
	

}

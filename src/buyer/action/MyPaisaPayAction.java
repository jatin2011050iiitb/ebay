package buyer.action;

import java.util.Map;

import user.model.Loggedin;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class MyPaisaPayAction extends ActionSupport{

	private static final long serialVersionUID = 1L;

	public String execute(){
		Map session = ActionContext.getContext().getSession();
		Loggedin logged = new Loggedin();
		logged = (Loggedin) session.get("Loggedin");
		if (logged.getStatus() == 1) {
			return "success";
		}
		else {
			return "showLoginPage";
		}
		
	}
	
	
}

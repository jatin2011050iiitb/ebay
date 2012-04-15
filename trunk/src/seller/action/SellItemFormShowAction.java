package seller.action;

import java.util.Map;

import user.model.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SellItemFormShowAction extends ActionSupport{

	private static final long serialVersionUID = 1L;

	public String input() {
		Map session = ActionContext.getContext().getSession(); 
		User user =(User) session.get("objectuser");
		System.out.println("user session="+user);
		if (user == null){
			return "failure";
		}
		if(user.getPPayAccId()<=0){
			System.out.println("PPay account id="+user.getPPayAccId());
			return "ppayreg";
		}
		return "success";
	}
}



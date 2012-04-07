package user.action;

import java.util.Map;
import com.opensymphony.xwork2.ActionContext;

public class LogoutAction {

	private Map session;
	public String execute() {
		session = ActionContext.getContext().getSession();
		session.remove("Loggedin");
		session.remove("objectuser");
		session.remove("userName");
		return "success";
	}
}

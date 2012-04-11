package ebay.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class LoginCheck implements Interceptor {

	private String result;
	private Map session;
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init() {
		// TODO Auto-generated method stub
		
		
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		session=ActionContext.getContext().getSession();
		
		if(session.get("Loggedin") == null) {
			result = "login";
		}
		else {
			result = invocation.invoke();
		}
		
		return result;
	}

}

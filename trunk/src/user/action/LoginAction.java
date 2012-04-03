package user.action;

import java.util.Map;	
import javax.servlet.http.HttpServletRequest;		 
import user.model.Loggedin;		 
import user.model.User;		 
import user.service.LoginService;
import ebay.util.Captcha;		 
import com.opensymphony.xwork2.ActionContext;		 
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction  extends ActionSupport{
	private String username;
	private String password;
	private String j_captcha_response;
	private String signin;
	private int userId;
	private Map session;
	
	public String show() {

		return "success";

	}
	
	public String execute() 
	{
		
		if(signin!=null)
		{	
			HttpServletRequest request  = (HttpServletRequest) ActionContext.getContext().get(org.apache.struts2.StrutsStatics.HTTP_REQUEST);
			Boolean isResponseCorrect = Boolean.FALSE;
			javax.servlet.http.HttpSession sess = request.getSession();
			String c= (String)sess.getAttribute(Captcha.CAPTCHA_KEY);
			
			if(!j_captcha_response.equals(c) )
			{
			addActionError("Invalid Code! Please try again!");
			return ERROR;
			}
		 
			LoginService loginservice =new LoginService();
			userId= loginservice.validateUser(getUsername(),getPassword());
			if(this.userId > 0) 
			{
				session=ActionContext.getContext().getSession();
				 Loggedin logged = new Loggedin();
				  logged.setStatus(1);
				session.put("Loggedin",logged);
				session.put("userId", this.userId);
				return "success";
			}
			
			else if(userId == 0) 
			{
				addFieldError("username", "username and password incorrect");
				return "failure";
			}
			
			else
			{
				addFieldError("username", "database connectivity error");
				return "error";
			}
		}	
		return "success";
	}
		
	


	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getJ_captcha_response() {
		return j_captcha_response;
	}

	public void setJ_captcha_response(String j_captcha_response) {
		this.j_captcha_response = j_captcha_response;
	}

	public String getSignin() {
		return signin;
	}

	public void setSignin(String signin) {
		this.signin = signin;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
}
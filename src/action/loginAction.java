package action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;


import model.Loggedin;
import model.User;

import util.Captcha;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class loginAction extends ActionSupport{
	private String username;
	private String password;
	private String j_captcha_response;
	private String signin;
	
	public String execute() throws Exception{
		
	if(signin!=null){	
	HttpServletRequest request  = (HttpServletRequest) ActionContext.getContext().get(org.apache.struts2.StrutsStatics.HTTP_REQUEST);
	Boolean isResponseCorrect = Boolean.FALSE;
	javax.servlet.http.HttpSession sess = request.getSession();
	String c= (String)sess.getAttribute(Captcha.CAPTCHA_KEY);
	if(!j_captcha_response.equals(c) ){
	addActionError("Invalid Code! Please try again!");
	return ERROR;
	}
	if(User.validateUser(getUsername(),password)==1){
		Map session = ActionContext.getContext().getSession();
		  Loggedin logged = new Loggedin();
		  logged.setStatus(1);
		  session.put("Loggedin",logged);
		//  User usr = User.findViaUserName(getUsername());
		 // session.put("Employee",emp);
	
	
	return SUCCESS;
	
}
	else{
		
		return "errorPage";
		
	}
	

	}else
	{
		return "showLogin";
	}
	
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

}

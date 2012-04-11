package user.action;

import java.util.*;
import user.model.*;
import user.service.*;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterSubmit extends ActionSupport {
	
	private static final long serialVersionUID = 1L;
	
	private User userBean;
	private String cpassword;	//confirm password field
	private RegistrationService reg;
	
	public void validate()
	{
		//int a=1;
		
		/*try
		{*/
			//checking if password and confirm password fields match or not
			if(!(getCpassword().equals(userBean.getPassword())))
			{
				System.out.println("\nin the validate method!!");
				addActionError("Passwords do not match");
			}	
		
			//checking if username already exists or not
			/*a = reg.findUser(userBean);
			
			if(a==0)
			{
				addFieldError("userBean.username", "Username already exists");
			}
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}*/
	}
		
	public String execute() 
	{
		RegistrationService reg = new RegistrationService();
		reg.insert(this.userBean);
		return SUCCESS;
	}
	
	public User getUserBean() {
		return userBean;
	}

	public void setUserBean(User userBean) {
		this.userBean = userBean;
	}
		
	public String getCpassword() {
		return cpassword;
	}

	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
	
}

package user.action;

import java.util.List;

import user.service.*;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterShow extends ActionSupport {
	
	private List<String> questions;
	private static final long serialVersionUID = 1L;
	
	public String execute()
	{
		return SUCCESS;
	}

	public List<String> getQuestions() 
	{
		questions = new RegistrationService().findQuestions();
		for (String s : questions) 
		{
			System.out.println(s);
		}
		return questions;
	}

	public void setQuestions(List<String> questions) 
	{
		this.questions = questions;
	}

}

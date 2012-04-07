package user.action;

import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;

import user.model.*;
import user.service.HomeService;

public class HomeAction extends ActionSupport{
	private static final long serialVersionUID = 1L;

	private Category categoryBean;
	
	public String execute() {
			
		return "success";
	}



	public void setCategoryBean(Category categoryBean) {
		this.categoryBean = categoryBean;
	}


	public Category getCategoryBean() {
		return categoryBean;
	}


	
}

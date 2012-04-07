package user.action;

import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;

import user.model.*;
import user.service.HomeService;

public class HomeAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private ArrayList<Category> categoryList;
	private Category categoryBean;
	
	public String execute() {
			
		return "success";
	}


	public void setCategoryList(ArrayList<Category> categoryList) {
		this.categoryList = categoryList;
	}


	public ArrayList<Category> getCategoryList() {
		return categoryList;
	}


	public void setCategoryBean(Category categoryBean) {
		this.categoryBean = categoryBean;
	}


	public Category getCategoryBean() {
		return categoryBean;
	}


	
}

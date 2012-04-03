package user.action;

import java.util.ArrayList;
import user.model.*;
import user.service.HomeService;

public class HomeAction {
	private ArrayList<Category> categoryList;
	private Category categoryBean;
	private String categoryIdSelected;
	
	public String execute() {
		HomeService homeService = new HomeService();
		setCategoryList(homeService.getCategoryList());
		System.out.println("after loading categories");
		
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


	public void setCategoryIdSelected(String categoryIdSelected) {
		this.categoryIdSelected = categoryIdSelected;
	}


	public String getCategoryIdSelected() {
		return categoryIdSelected;
	}


	
}

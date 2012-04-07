package user.action;
import java.util.ArrayList;

import com.opensymphony.xwork2.ActionSupport;

import user.model.*;
import user.service.HomeService;
import user.service.ProductService;

public class ShowSubCategoryAction extends ActionSupport{
	
	private static final long serialVersionUID = 1L;
	private int categoryId;
	private ArrayList<Category> categoryList;
	private ArrayList<SubCategory> subCategoryList;
	
	public String execute() {
		ProductService productservice =new ProductService();
		setSubCategoryList(productservice.getSubCategoryList(categoryId));
	
	return "success";
	}

	public void setSubCategoryList(ArrayList<SubCategory> subCategoryList) {
		this.subCategoryList = subCategoryList;
	}

	public ArrayList<SubCategory> getSubCategoryList() {
		return subCategoryList;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public ArrayList<Category> getCategoryList() {
		return categoryList;
	}

	public void setCategoryList(ArrayList<Category> categoryList) {
		this.categoryList = categoryList;
	}
	
	
}

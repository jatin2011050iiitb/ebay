package user.action;

import java.util.ArrayList;

import user.model.Category;
import user.model.Product;
import user.service.*;

import com.opensymphony.xwork2.ActionSupport;

public class SearchItemInCategoryAction extends ActionSupport {

	private static final long serialVersionUID = 6908470320373267510L;

	private String categoryIdSelected;
	
	private ArrayList<Category> categoryList;
	private ArrayList<Product> productList;
	
	private String searchString;
	private String searchMsg;
	
	public String execute() {
		SearchService searchService = new SearchService();
		setProductList(searchService.getProductList(Integer.parseInt(getCategoryIdSelected()), getSearchString()));
		
		if(getProductList().isEmpty()) {
			setSearchMsg("No results found");
		}
		
		//repopulate categoryList
		HomeService homeService = new HomeService();
		setCategoryList(homeService.getCategoryList());
		
		return "success";
	}

	public String getCategoryIdSelected() {
		return categoryIdSelected;
	}

	public void setCategoryIdSelected(String categoryIdSelected) {
		this.categoryIdSelected = categoryIdSelected;
	}

	public ArrayList<Category> getCategoryList() {
		return categoryList;
	}

	public void setCategoryList(ArrayList<Category> categoryList) {
		this.categoryList = categoryList;
	}
	
	public ArrayList<Product> getProductList() {
		return productList;
	}

	public void setProductList(ArrayList<Product> productList) {
		this.productList = productList;
	}

	public void setSearchString(String searchString) {
		this.searchString = searchString;
	}

	public String getSearchString() {
		return searchString;
	}

	public void setSearchMsg(String searchMsg) {
		this.searchMsg = searchMsg;
	}

	public String getSearchMsg() {
		return searchMsg;
	}

}

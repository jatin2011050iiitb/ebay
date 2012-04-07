package user.action;

import java.util.ArrayList;

import user.model.Category;
import user.model.Product;
import user.service.*;

import com.opensymphony.xwork2.ActionSupport;

public class SearchItemInCategoryAction extends ActionSupport {

	private static final long serialVersionUID = 6908470320373267510L;

	private String searchCategoryIdSelected;
	private ArrayList<Category> searchCategoryList;
	
	private ArrayList<Product> productList;
	
	private String searchString;
	private String searchMsg;
	
	public String execute() {
		SearchService searchService = new SearchService();
		setProductList(searchService.getProductList(Integer.parseInt(getSearchCategoryIdSelected()), getSearchString()));
		
		if(getProductList().isEmpty()) {
			setSearchMsg("No results found");
		}
		
		HomeService homeService = new HomeService();
		setSearchCategoryList(homeService.getCategoryList());
		
		return "success";
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




	public void setSearchCategoryIdSelected(String searchCategoryIdSelected) {
		this.searchCategoryIdSelected = searchCategoryIdSelected;
	}




	public String getSearchCategoryIdSelected() {
		return searchCategoryIdSelected;
	}




	public void setSearchCategoryList(ArrayList<Category> searchCategoryList) {
		this.searchCategoryList = searchCategoryList;
	}




	public ArrayList<Category> getSearchCategoryList() {
		return searchCategoryList;
	}

}

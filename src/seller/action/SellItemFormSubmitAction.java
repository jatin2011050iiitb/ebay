/*package seller.action;

import java.util.ArrayList;

import user.model.Category;
import user.service.HomeService;

import com.opensymphony.xwork2.ActionSupport;

public class SellItemFormSubmitAction extends ActionSupport{
	private static final long serialVersionUID = 1L;

	private String categoryIdSelected;
	private ArrayList<Category> categoryList;

	public String execute() {
		HomeService homeService = new HomeService();
		setCategoryList(homeService.getCategoryList());
		return SUCCESS;
	}
	
	public ArrayList<Category> getCategoryList() {
		return categoryList;
	}

	public void setCategoryList(ArrayList<Category> categoryList) {
		this.categoryList = categoryList;
	}

	public String getCategoryIdSelected() {
		return categoryIdSelected;
	}

	public void setCategoryIdSelected(String categoryIdSelected) {
		this.categoryIdSelected = categoryIdSelected;
	}

}
*/
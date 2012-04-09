package user.action;

import java.util.ArrayList;

import user.model.Category;
import user.model.Product;
import user.service.HomeService;
import user.service.ProductService;

import com.opensymphony.xwork2.ActionSupport;

public class ShowProductListAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private int categoryId;
	private int subCategoryId; 
	
	private ArrayList<Product> productList;
	
	public String execute() {
		ProductService productservice =new ProductService();
		setProductList(productservice.getProductList(subCategoryId));
		
	return "success";
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public int getSubCategoryId() {
		return subCategoryId;
	}

	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}

	public ArrayList<Product> getProductList() {
		return productList;
	}

	public void setProductList(ArrayList<Product> productList) {
		this.productList = productList;
	}


}
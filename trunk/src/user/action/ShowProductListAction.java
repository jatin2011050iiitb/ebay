package user.action;

import java.util.ArrayList;

import user.model.Category;
import user.model.Product;
import user.model.SubCategory;
import user.service.BreadCrumService;
import user.service.HomeService;
import user.service.ProductService;

import com.opensymphony.xwork2.ActionSupport;

public class ShowProductListAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private int categoryId;
	private int subCategoryId; 
	private SubCategory subcategory;
	private SubCategory subcategorydetails;
	private Category categoryDetails;
	
	private ArrayList<Product> productList;
	
	public String execute() {
		ProductService productservice =new ProductService();
		setProductList(productservice.getProductList(subCategoryId));
		
		// Start of For BreadCrum Code
		System.out.println("In Product List: " + subCategoryId);
		BreadCrumService breadcrum = new BreadCrumService();
		subcategorydetails = breadcrum.getSubCategoryDescription(subCategoryId);
		int categoryId = subcategorydetails.getCategoryId();
		System.out.println("Category Id is:" + categoryId);
		categoryDetails = breadcrum.getCategoryDescription(categoryId);
		System.out.println("Home > "+ categoryDetails.getCategoryDesc() + "> " + subcategorydetails.getSubCategoryDesc());
	// End of BreadCrum Code
		
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

	public SubCategory getSubcategory() {
		return subcategory;
	}

	public void setSubcategory(SubCategory subcategory) {
		this.subcategory = subcategory;
	}

	public SubCategory getSubcategorydetails() {
		return subcategorydetails;
	}

	public void setSubcategorydetails(SubCategory subcategorydetails) {
		this.subcategorydetails = subcategorydetails;
	}

	public Category getCategoryDetails() {
		return categoryDetails;
	}

	public void setCategoryDetails(Category categoryDetails) {
		this.categoryDetails = categoryDetails;
	}


}

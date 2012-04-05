package user.action;

import java.util.ArrayList;

import user.model.Category;
import user.model.Product;
import user.service.HomeService;
import user.service.ProductService;

import com.opensymphony.xwork2.ActionSupport;

public class ShowProductAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private int categoryId;
	private int subCategoryId; 
	private int productId;
	private String categoryIdSelected;
	private ArrayList<Category> categoryList;
	private ArrayList<Product> productList;
	private Product product;
	
	public String execute() {
		HomeService homeService = new HomeService();
		setCategoryList(homeService.getCategoryList());
		ProductService productservice =new ProductService();
		/*setProductList(productservice.getProductList(subCategoryId));*/
		setProduct(productservice.getProduct(getProductId()));
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
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}

}

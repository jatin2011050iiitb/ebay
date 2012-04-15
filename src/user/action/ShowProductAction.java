package user.action;

import java.util.ArrayList;
import java.util.Map;

import user.model.Category;
import user.model.Product;
import user.model.SubCategory;
import user.service.BreadCrumService;
import user.service.HomeService;
import user.service.ProductService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ShowProductAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private int categoryId;
	private int subCategoryId; 
	private String productId;
	private ArrayList<Product> productList;
	private Product product;
	private Map session;
	private SubCategory subcategorydetails;
	private Category categoryDetails;
	private Product products;
	
	public String execute() {
		
	System.out.println("ShowProductAction Product id:"+productId);
		ProductService productservice =new ProductService();
		setProduct(productservice.getProduct(Integer.parseInt(getProductId())));
		
		Map session=ActionContext.getContext().getSession();
		session.put("SessionProduct", this.product);
		
		// Start Of BreadCrum
		System.out.println("In Product Item page:" + productId);
		BreadCrumService breadcrum = new BreadCrumService();
		int prodId = Integer.parseInt(getProductId());
		products = breadcrum.getProductDescription(prodId);
		
		subcategorydetails = breadcrum.getSubCategoryDescription(products.getSubcategoryId());
		int categoryId = subcategorydetails.getCategoryId();
		System.out.println("Category Id is:" + categoryId);
		categoryDetails = breadcrum.getCategoryDescription(categoryId);
		System.out.println("Home > "+ categoryDetails.getCategoryDesc() + "> " + subcategorydetails.getSubCategoryDesc() + "> " + products.getProductDesc());
	// End Of BreadCrum
		
		if(product.getSaleType()==1){
			return "success_bin";
		}
		else{
			return "success_bid";
		}
	
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
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
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
	public Product getProducts() {
		return products;
	}
	public void setProducts(Product products) {
		this.products = products;
	}
	

}

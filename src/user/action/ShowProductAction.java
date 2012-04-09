package user.action;

import java.util.ArrayList;
import java.util.Map;

import user.model.Category;
import user.model.Product;
import user.service.HomeService;
import user.service.ProductService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ShowProductAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private int categoryId;
	private int subCategoryId; 
	private int productId;
	private ArrayList<Product> productList;
	private Product product;
	private Map session;
	public String execute() {
	
		ProductService productservice =new ProductService();
		setProduct(productservice.getProduct(getProductId()));
		
		Map session=ActionContext.getContext().getSession();
		session.put("SessionProduct", this.product);
		
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
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}

}

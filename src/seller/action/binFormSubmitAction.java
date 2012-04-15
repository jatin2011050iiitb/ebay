package seller.action;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import seller.model.AuctionProduct;
import seller.model.BinProduct;
import seller.model.Product;
import seller.service.auctionService;
import seller.service.buyitnowService;

public class binFormSubmitAction extends ActionSupport implements ServletRequestAware{
private static final long serialVersionUID = 1L;
	
	private Product product;
	private BinProduct binproduct;
	private File photo;
	private HttpServletRequest servletRequest;
	private String category;
	private String subcategory;
	
	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}
	
	public String execute() {
		buyitnowService bin = new buyitnowService();
		bin.insert(this.product, this.binproduct, category, subcategory);
		
		try {
			String filepath = servletRequest.getSession().getServletContext()
					.getRealPath("/images_product");
			System.out.println("Server path: " + filepath);
			File fileToCreate = new File(filepath, "("+bin.getProductId(product) + ").jpg");
			FileUtils.copyFile(photo, fileToCreate);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return SUCCESS;
	}
	
	
	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public String getSubcategory() {
		return subcategory;
	}


	public void setSubcategory(String subcategory) {
		this.subcategory = subcategory;
	}


	public Product getProduct() {
		return product;
	}
	
	public void setProduct(Product product) {
		this.product = product;
	}
	
	public BinProduct getBinproduct() {
		return binproduct;
	}

	public void setBinproduct(BinProduct binproduct) {
		this.binproduct = binproduct;
	}

	public File getPhoto() {
		return photo;
	}

	public void setPhoto(File photo) {
		this.photo = photo;
	}
}

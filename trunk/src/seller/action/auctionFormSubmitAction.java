package seller.action;

import java.io.File;
import java.io.IOException;

import seller.model.*;
import seller.service.*;

import com.opensymphony.xwork2.ActionSupport;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;

public class auctionFormSubmitAction extends ActionSupport implements ServletRequestAware{
	
	private static final long serialVersionUID = 1L;
	
	private Product product;
	private AuctionProduct auctionproduct;
	private File photo;
	private HttpServletRequest servletRequest;
	private String category;
	private String subcategory;
	
	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}
	
	public String execute() {
		auctionService auction = new auctionService();
		auction.insert(this.product,this.auctionproduct, category, subcategory);
		
		try {
			String filepath = servletRequest.getSession().getServletContext()
					.getRealPath("/images_product");
			System.out.println("Server path: " + filepath);
			File fileToCreate = new File(filepath, "("+auction.getProductId(product) + ").JPG");
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
	
	public AuctionProduct getAuctionproduct() {
		return auctionproduct;
	}
	
	public void setAuctionproduct(AuctionProduct auctionproduct) {
		this.auctionproduct = auctionproduct;
	}

	public File getPhoto() {
		return photo;
	}

	public void setPhoto(File photo) {
		this.photo = photo;
	}

	
		
}

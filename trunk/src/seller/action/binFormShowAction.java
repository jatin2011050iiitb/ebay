package seller.action;

import java.util.*;
import java.io.*;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import seller.model.Product;
import seller.service.*;

import com.opensymphony.xwork2.ActionSupport;

public class binFormShowAction extends ActionSupport implements
ServletRequestAware{
	
			private static final long serialVersionUID = 1L;

			private Product product;
			private File photo;
			private HttpServletRequest servletRequest;
			private Map mapping;
			
			public void setServletRequest(HttpServletRequest servletRequest) {
				this.servletRequest = servletRequest;

			}
			
			public File getPhoto() {
				return photo;
			}

			public void setPhoto(File photo) {
				this.photo = photo;
			}

			public Product getProduct() {
				return product;
			}

			public void setProduct(Product product) {
				this.product = product;
			}

			public Map getMapping() {
				mapping=new subCategoryList().getSubCategoryList();
				return mapping;
			}
			
			public void setMapping(Map mapping) {
				this.mapping = mapping;
			}

			public String input() {
				return SUCCESS;
			}
}









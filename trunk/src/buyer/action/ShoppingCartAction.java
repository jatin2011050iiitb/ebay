package buyer.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import user.model.User;

import buyer.model.ShoppingCart;
import buyer.model.ShoppingCartArray;
import buyer.service.ShoppingCartService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ShoppingCartAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	ShoppingCartArray shoppingCartArray = new ShoppingCartArray();
	ShoppingCart shoppingCart = new ShoppingCart();
	ArrayList<Integer> sellerIds = new ArrayList<Integer>();
	 private User buyer;
	 private String message=null;
	public String execute(){
		message=null;
		Map session = ActionContext.getContext().getSession();
		buyer =(User) session.get("objectuser");
		
		ShoppingCartService shoppingCartService= new  ShoppingCartService();
		setSellerIds(shoppingCartService.getSellerids(buyer.getUserId()));
		
		setShoppingCartArray((shoppingCartService.getSCartArray(getSellerIds(),buyer.getUserId())));
		
		/*if(shoppingCartArray==null || shoppingCartArray.equals("")){
			message="No Carts. Please Start Buying";
		}*/
		
		/*Iterator<Integer> iterator = sellerIds.iterator();
		while (iterator.hasNext()) {
			System.out.println("SellerId="+iterator.next());
		}*/
		
		
		return "success";
	}
	
	
	
	

	public User getBuyer() {
		return buyer;
	}

	public void setBuyer(User buyer) {
		this.buyer = buyer;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public ShoppingCartArray getShoppingCartArray() {
		return shoppingCartArray;
	}

	public void setShoppingCartArray(ShoppingCartArray shoppingCartArray) {
		this.shoppingCartArray = shoppingCartArray;
	}

	public ShoppingCart getShoppingCart() {
		return shoppingCart;
	}

	public void setShoppingCart(ShoppingCart shoppingCart) {
		this.shoppingCart = shoppingCart;
	}

	public ArrayList<Integer> getSellerIds() {
		return sellerIds;
	}

	public void setSellerIds(ArrayList<Integer> sellerIds) {
		this.sellerIds = sellerIds;
	}

}

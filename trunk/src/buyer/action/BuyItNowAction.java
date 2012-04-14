package buyer.action;

import java.util.Map;

import user.model.Product;
import user.model.User;
import buyer.model.ShoppingCart;
import buyer.model.ShoppingCartItem;
import buyer.service.BuyItNowService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItNowAction extends ActionSupport{
	 private static final long serialVersionUID = 1L;
	 private Product productc;
	 private User buyer;
	private ShoppingCart shoppingCart;
	 private ShoppingCartItem shoppingCartItem;
	 private int quantity; 
	
	public String execute() {
		Map session = ActionContext.getContext().getSession();
		buyer =(User) session.get("objectuser");
		productc =(Product)session.get("SessionProduct");
		
		String completeAddress=null;
		completeAddress=buyer.getAddress()+"\n"+buyer.getCity()+"\n"+buyer.getState()+","+buyer.getCountry()+
		"\n"+"Pincode:"+buyer.getPincode();
		
		System.out.println("Hi. in buyitnow action..");
		System.out.println("seller id retried from session"+ productc.getSellerId());
		
	BuyItNowService buyItNowService = new BuyItNowService();
	setShoppingCart(buyItNowService.createShoppingCart(getProductc(),buyer.getUserId(),completeAddress));
	if(shoppingCart!=null){
	setShoppingCartItem(buyItNowService.getShoppingCartItem(getShoppingCart(),getProductc(),buyer.getUserId(),quantity));
	}
	/*if(shoppingCartItem!=null){
	setShoppingCart(buyItNowService.calcGrandTotalBuyItNow(shoppingCart,shoppingCartItem));	
	}*/
	
	System.out.println("shopping cart details buyer="+shoppingCart.getBuyerId());
	System.out.println("shopping cart details seller="+shoppingCart.getSellerId());
	System.out.println("shopping cart details cartid="+shoppingCart.getCartId());
	
	
	session.put("SessionCarts",shoppingCart);
	session.put("sessionCartItems", shoppingCartItem);

		return "success";
	}

	public Product getProductc() {
		return productc;
	}

	public void setProductc(Product productc) {
		this.productc = productc;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public ShoppingCart getShoppingCart() {
		return shoppingCart;
	}
	
	public void setShoppingCart(ShoppingCart shoppingCart) {
		this.shoppingCart = shoppingCart;
	}
	
	public User getBuyer() {
		return buyer;
	}
	
	public void setBuyer(User buyer) {
		this.buyer = buyer;
	}
	
	public ShoppingCartItem getShoppingCartItem() {
		return shoppingCartItem;
	}
	
	public void setShoppingCartItem(ShoppingCartItem shoppingCartItem) {
		this.shoppingCartItem = shoppingCartItem;
	}
	
}

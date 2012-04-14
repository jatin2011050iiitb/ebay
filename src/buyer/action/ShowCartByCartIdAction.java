package buyer.action;

import java.util.Map;

import buyer.model.ShoppingCart;
import buyer.service.ShoppingCartService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ShowCartByCartIdAction extends ActionSupport{
	
	private int cartId;
	ShoppingCart shoppingCart = new ShoppingCart();
	
	public String execute(){
		ShoppingCartService shoppingCartService= new  ShoppingCartService();
	setShoppingCart(shoppingCartService.getCartByCartID(getCartId()));
	 Map session = ActionContext.getContext().getSession();
	session.put("SessionCarts",shoppingCart);
	return "success";	
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public ShoppingCart getShoppingCart() {
		return shoppingCart;
	}

	public void setShoppingCart(ShoppingCart shoppingCart) {
		this.shoppingCart = shoppingCart;
	}

}

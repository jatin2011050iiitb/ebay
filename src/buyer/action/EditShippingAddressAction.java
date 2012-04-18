package buyer.action;

import java.util.Map;

import buyer.model.ShoppingCart;
import buyer.service.ShoppingCartService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class EditShippingAddressAction extends ActionSupport{
	private String ShippingAddress;
	private int cartId;
	
	private Map session;
	
	public String execute() {
		session = ActionContext.getContext().getSession();
		setShippingAddress(((ShoppingCart) session.get("SessionCarts")).getShippingAddress());
		return "show";
	}
	
	public String save() {
		session = ActionContext.getContext().getSession();
		setCartId(((ShoppingCart) session.get("SessionCarts")).getCartId());
		System.out.println("In save method of EditShippingAddressAction");
		System.out.println(getShippingAddress());
		
		ShoppingCartService shoppingCartService = new ShoppingCartService();
		shoppingCartService.saveEditedShippingAddress(getShippingAddress(), getCartId());
		
		return "success";
	}

	

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getCartId() {
		return cartId;
	}

	public void setShippingAddress(String shippingAddress) {
		ShippingAddress = shippingAddress;
	}

	public String getShippingAddress() {
		return ShippingAddress;
	}
}

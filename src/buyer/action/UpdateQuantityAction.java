package buyer.action;

import java.util.Map;

import user.model.User;
import buyer.model.ShoppingCart;
import buyer.model.ShoppingCartItem;
import buyer.service.BuyItNowService;
import buyer.service.UpdateQuantityService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateQuantityAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private User buyer;
	private ShoppingCart shoppingCart;
	private ShoppingCartItem shoppingCartItem;
	private int quantity;
		 
		 public String execute() {
			 
			 Map session = ActionContext.getContext().getSession();
				buyer =(User) session.get("objectuser");
				shoppingCart =(ShoppingCart) session.get("SessionCarts");
				shoppingCartItem=(ShoppingCartItem) session.get("sessionCartItems");
				
				UpdateQuantityService updateQuantityService = new UpdateQuantityService();
				setShoppingCartItem(updateQuantityService.updateSingleProductQuantity(shoppingCartItem,quantity));
				
				BuyItNowService buyItNowService = new BuyItNowService();
//				if(shoppingCartItem!=null){
//					setShoppingCart(buyItNowService.calcGrandTotalBuyItNow(shoppingCart,shoppingCartItem));	
//					}
				session.put("SessionCarts",shoppingCart);
				session.put("sessionCartItems", shoppingCartItem);
				
				return "success"; 
		 }
		 
		 
		public User getBuyer() {
			return buyer;
		}
		public void setBuyer(User buyer) {
			this.buyer = buyer;
		}
		public ShoppingCart getShoppingCart() {
			return shoppingCart;
		}
		public void setShoppingCart(ShoppingCart shoppingCart) {
			this.shoppingCart = shoppingCart;
		}
		public ShoppingCartItem getShoppingCartItem() {
			return shoppingCartItem;
		}
		public void setShoppingCartItem(ShoppingCartItem shoppingCartItem) {
			this.shoppingCartItem = shoppingCartItem;
		}
		public int getQuantity() {
			return quantity;
		}
		public void setQuantity(int quantity) {
			this.quantity = quantity;
		} 

		 
		 
		 
}

package seller.action;

import java.util.ArrayList;
import java.util.Map;

import seller.service.ShipmentService;
import user.model.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ShowPendingShipments extends ActionSupport {
	private ArrayList<Integer> cartIdList;
	
	private Map session;
	private User user;
	private int sellerId;
	
	public String execute() {
		// get the id of the seller
		session=ActionContext.getContext().getSession();
		user = (User) session.get("objectuser");
		sellerId = user.getUserId();
		
		ShipmentService shipmentService = new ShipmentService();
		setCartIdList(shipmentService.getCartIdList(sellerId));
		System.out.println("In execute method of ShowPendingShipments");
		return "success";
	}

	public void setCartIdList(ArrayList<Integer> cartIdList) {
		this.cartIdList = cartIdList;
	}

	public ArrayList<Integer> getCartIdList() {
		return cartIdList;
	}
	
}

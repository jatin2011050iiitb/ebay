package user.action;

import java.util.ArrayList;
import java.util.Map;
import java.sql.Date;

import user.model.User;
import user.service.LoginService;
import user.service.MyEbayService;

import buyer.model.ShoppingCart;
import buyer.model.ShoppingCartItem;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import user.model.Loggedin;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import paymentGateway.action.RefundAmountToBuyerAccount;
import paymentGateway.action.TransferAmountToSellerAcount;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

import ebay.util.DBconn;

import user.model.Product;


public class MyEbayAction extends ActionSupport{

	private static final long serialVersionUID = 1L;

	private User userBean;
	private String lastname;
	private String yourgender;
	private Date dateofbirth;
	private String address;
	private String city;
	private String state;
	private String country;
	private int pincode;
	private String emailid;
	private String firstname;
	private int cartId;
	private int recieptConfirmation;
	private String shipmentStatus;
	private String markReceivedStatus;


	ArrayList<ShoppingCart> shoppingcart = new ArrayList<ShoppingCart>();
	ArrayList<ShoppingCartItem> shoppingcartitem = new ArrayList<ShoppingCartItem>();
	ArrayList<Product> allSellItems = new ArrayList<Product>();
	ArrayList<ShoppingCart> shoppingcart1 = new ArrayList<ShoppingCart>();
	

	public String showEbayHome(){
		return "success";
	}
	public String mySellPageMethod(){
		return "success";
	}
	
	public String bidOrOfferMethod(){
		return "success";
	}
	public String cartConfirmItemDeliveryMethod(){
		MyEbayService myebayservice = new MyEbayService();
		Map session = ActionContext.getContext().getSession();
		userBean=(User)session.get("objectuser");
		this.setUserBean(userBean);
		int userid=userBean.getUserId();
		shoppingcart1 = myebayservice.getShoppingCartConfirmDetails(userid);
			if(shoppingcart1.isEmpty())
				System.out.print("Shopping cart Confirm Detail empty");
			else
				System.out.print("Shopping cart Confirm Detail NOT empty");

		return "success";
	}

	public String showProfileEdit(){
		Map session = ActionContext.getContext().getSession();
		userBean=(User)session.get("objectuser");
		int userid=userBean.getUserId();
		LoginService loginservice = new LoginService();
		userBean = loginservice.populate(userid);
		session.put("objectuser", this.userBean);	
		return "animesh";
	}
	
	public String submitProfileEditMethod(){

		Map session = ActionContext.getContext().getSession();
		userBean=(User)session.get("objectuser");
		this.setUserBean(userBean);
		int userid=userBean.getUserId();
		MyEbayService myebayservice = new MyEbayService();
		int flag = myebayservice.updateProfile(userid,firstname,lastname,address,city,state,country,pincode,emailid);
		System.out.print("Flag="+flag);
		if(flag==1)
			return "success";
		else
			return "error";
	}
	
	public String purchaseHistoryMethod(){
		
		MyEbayService myebayservice = new MyEbayService();
		Map session = ActionContext.getContext().getSession();
		userBean=(User)session.get("objectuser");
		this.setUserBean(userBean);
		int userid=userBean.getUserId();
		
		shoppingcart = myebayservice.getShoppingCartDetails(userid);
			if(shoppingcart.isEmpty())
				System.out.print("Shopping cart empty");
			else
				System.out.print("Shopping cart NOT empty");

		return "success";
	}

	public String receiptConfirmationShowMethod(){
		System.out.println("Cart ID iS:"+getCartId());
		System.out.println("Shipping Ststus isssS:"+getShipmentStatus());
	
		MyEbayService myebayservice = new MyEbayService();
		shoppingcartitem = myebayservice.getShoppingCartItemDetails(getCartId());
		return "success";
	}

	public String receiptConfirmationSubmitMethod(){
		System.out.println("Cart ID is in receiptConfirmationSubmitMethod is::"+getCartId());
		MyEbayService myebayservice = new MyEbayService();
		int markflag = myebayservice.markItemReceived(getCartId(), markReceivedStatus);
		if (markflag==1){	//// This is for item received; 1 indicates it has delivered the item to buyer and buyer has got the item;
			
		
			/*TransferAmountToSellerAcount tsa = new TransferAmountToSellerAcount();
			tsa.setCartId(getCartId());
			String result = tsa.execute();
			
			System.out.println("result from tsa: "+ result);*/
			return "success";
			
		}
		if (markflag==2){	// This is for refund to buyer; 2 indicates it has shipment status failed;
			//write java code for refund; if trigger doesn't work;
/*			
			RefundAmountToBuyerAccount refundAmountToBuyerAccount = new RefundAmountToBuyerAccount();
			refundAmountToBuyerAccount.setCartId(getCartId());
			String result = refundAmountToBuyerAccount.execute();
			System.out.println("In Refund::::::" + result);
*/			
			return "success";
		}
		
		else
			return "error";
	}
	public String allSellItems(){
		
		Map session = ActionContext.getContext().getSession();
		userBean=(User)session.get("objectuser");
		int userId = userBean.getUserId();
		
		MyEbayService allsellitem = new MyEbayService();
		allSellItems=allsellitem.getAllSellProducts(userId);
		
		return "success";
	}	

/* --------------------------------------------------------------------------------------------------
	 ALL GETTER SETTERS
   --------------------------------------------------------------------------------------------------*/	
	public String getMarkReceivedStatus() {
		return markReceivedStatus;
	}
	public void setMarkReceivedStatus(String markReceivedStatus) {
		this.markReceivedStatus = markReceivedStatus;
	}
	public String getShipmentStatus() {
		return shipmentStatus;
	}
	public void setShipmentStatus(String shipmentStatus) {
		this.shipmentStatus = shipmentStatus;
	}
	public ArrayList<ShoppingCart> getShoppingcart1() {
		return shoppingcart1;
	}
	public void setShoppingcart1(ArrayList<ShoppingCart> shoppingcart1) {
		this.shoppingcart1 = shoppingcart1;
	}
	public ArrayList<Product> getAllSellItems() {
		return allSellItems;
	}
	public void setAllSellItems(ArrayList<Product> allSellItems) {
		this.allSellItems = allSellItems;
	}
	public ArrayList<ShoppingCartItem> getShoppingcartitem() {
		return shoppingcartitem;
	}
	public void setShoppingcartitem(ArrayList<ShoppingCartItem> shoppingcartitem) {
		this.shoppingcartitem = shoppingcartitem;
	}

	public int getRecieptConfirmation() {
		return recieptConfirmation;
	}
	public void setRecieptConfirmation(int recieptConfirmation) {
		this.recieptConfirmation = recieptConfirmation;
	}

	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public ArrayList<ShoppingCart> getShoppingcart() {
		return shoppingcart;
	}

	public void setShoppingcart(ArrayList<ShoppingCart> shoppingcart) {
		this.shoppingcart = shoppingcart;
	}

	public User getUserBean() {
		return userBean;
	}

	public void setUserBean(User userBean) {
		this.userBean = userBean;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getYourgender() {
		return yourgender;
	}

	public void setYourgender(String yourgender) {
		this.yourgender = yourgender;
	}

	public Date getDateofbirth() {
		return dateofbirth;
	}

	public void setDateofbirth(Date dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}

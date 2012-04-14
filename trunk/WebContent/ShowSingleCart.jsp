<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="css/lhniyzzerm4fferebck2ef3qb.css">
</head>
<body>

	<div class="r3 c gy-br">
		<div class="gy">
			<div>
				<div class="r3_hm"
					style="border-width: 1px 1px 0; padding: 0; height: 5px; font-size: 0; overflow: hidden;"></div>
			</div>
			<div class="r3_hm">
				<div style="height: 20px; overflow: auto">
					<h2 class="g-m g-m0">ShoppingCartPage</h2>
				</div>
			</div>
		</div>
		<div class="r3_c c-sgf">
			<div class="r3_cm po">
				<div>
					<div>
						<h1 class="hidh1">Home Page</h1>
						<a name="mainContent"></a>
						

								<s:push value="shoppingCart">
								<br/>
								<br/>
									CartID: <s:property value="cartId" /><br/>
									SellerName: <s:property value="sellerName"/><br/><br/>
									
									<s:iterator value="itemArray">
									<a href="ShowProduct?productId=<s:property value="productId" />" >
				<h3><s:property value="productDesc"/></h3> </a>
											<%-- <h3><s:property value="productDesc"/><br/></h3>	 --%>
											Price: <s:property value="unitPrice"/><br/>	
											Quantity: <s:property value="quantity"/><br/>
											<%-- <s:textfield label="Quantity:" value="%{quantity}" name="quantity" size="1"/> --%>	
											SubTotal: <s:property value="subtotal"/><br/>	
											Shipment Charges: <s:property value="shippingPrice"/><br/>	
											<br/>
									</s:iterator>
									</s:push>
					Your Shipping Address: <s:property value="shoppingCart.shippingAddress"/><br/><br/>		
						Grand SubTotal: <s:property value="shoppingCart.grandSubTotal" /><br/>		
						Grand Shipping price: <s:property value="shoppingCart.grandsShipmentCharges" /><br/>
						Grand Total: <s:property value="shoppingCart.grandTotal" /><br/><br/>
					<b> You will confirm the order in the next step.</b>	
						
						<s:form name="ProceedToPay" method="POST" action="ProceedToPay">  
						<input name=cartId value="<s:property value="shoppingCart.cartId"/>" type="hidden"/>
						<s:submit name="submit" id="ProceedToPay_id" value="ProceedToPay" align= "right"/><br>
						</s:form>
					</div>
				</div>
			</div>
			<div class="r3_fm r3_s"></div>
		</div>
	</div>

</body>
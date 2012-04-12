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
					<h2 class="g-m g-m0">eBay select Shipping and Payment Method</h2>
				</div>
			</div>
		</div>
		<div class="r3_c c-sgf">
			<div class="r3_cm po">
				<div>
					<div>
						<h1 class="hidh1">Home Page</h1>
						<a name="mainContent"></a>
						<table border="0" cellpadding="0" cellspacing="0">
							<tbody>
				
			<img border="1" src="images_product/(<s:property value="shoppingCartItem.productId"/>).JPG"
						alt="Pic not available" width="150px" height="150px" />
				
										<tr>
										
										<td valign="top" class="catContent">
									
						
											 </td>
						<td valign="top" class="catContent" >
											
						<h1><s:property value="shoppingCartItem.productDesc"/></h1><br/>
						
						<b>Price: <s:property value="shoppingCartItem.unitPrice"/></b><br/>
						
						<s:form name="updateQuantityForm" action="UpdateQuantity"  method="post">
						<s:textfield label="Quantity:" value="%{shoppingCartItem.quantity}" name="quantity" size="1"/>&nbsp;&nbsp;
						<s:submit method="execute" value="Update Quantity" align="right" />
						</s:form>
						
					<%-- 	<b>Quantity:<s:property  value="shoppingCartItem.quantity" /></b><br/> --%>
						<b>Sub-total <s:property value="shoppingCartItem.subtotal"/></b><br/>
						<b>Shipment Charges: <s:property value="shoppingCartItem.shippingPrice"/></b><br/>
						<b>Grand Total: <s:property value="shoppingCart.grandTotal"/></b><br/>
						SellerId: <s:property value="shoppingCartItem.sellerId"/><br/>
						Seller Name: <s:property value="shoppingCartItem.sellerName"/><br/>
						
							 Shipping Address: <s:property value="buyer.address"/><br/>
							 				<s:property value="buyer.city"/><br/>
							 				<s:property value="buyer.state"/>,<s:property value="buyer.country"/><br/>
							 				Pincode: <s:property value="buyer.pincode"/><br/>
						<b> You will confirm the order in the next step.</b>	
						
						<s:form name="ProceedToPay" method="POST" action="ProceedToPay">  
						<input name=cartId value="<s:property value="shoppingCart.cartId"/>" type="hidden"/>
						<s:submit name="submit" id="ProceedToPay_id" value="ProceedToPay" align= "right"/><br>
						</s:form>
						
	
	
								
	
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="r3_fm r3_s">
				
			</div>
		</div>
	</div>

</body>

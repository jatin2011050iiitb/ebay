<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Payment</title>
</head>
<body>
	<s:form name="ShipmentConfirmationForm" method="POST" action="ConfirmShipmentSubmit.action">
		CartID: <s:property value="shipmentCart.cartId" /><br>
		<input  name="shipmentCart.cartId" value = "<s:property value="shipmentCart.cartId"/>" type="hidden"/>
		<%-- <s:push value="shipmentCart"> --%>
			<%-- <s:push value="shipmentCartDetails"> --%>
				BuyerID: <s:property value="shipmentCart.shipmentCartDetails.buyerId" /><br>
				Buyer Name: <s:property value="shipmentCart.shipmentCartDetails.buyerName" /><br>
				Total Amount: <s:property value="shipmentCart.shipmentCartDetails.total" /><br>
			<%-- </s:push> --%>
			
			
			<br><br>
			
			<table>
				<tr>
					<th>ProductID</th>
					<th>Product Desc</th>
					<th>Quantity</th>
				</tr>
				<s:iterator value="shipmentCart.shipmentItemList">
					<tr>
						<td><s:property value="productId" /></td>
						<td><s:property value="productDesc" /></td>
						<td><s:property value="quantityToShip" /></td>
					</tr>
				</s:iterator>
			</table>
			
			
			<br><br>
			
			<%-- <s:push value="shipmentCartDetails"> --%>
				<s:textfield name="shipmentCart.shipmentCartDetails.shipmentCompany" label="Shipment Company"/><br><br>
				<s:textfield name="shipmentCart.shipmentCartDetails.shipmentId" label="Shipment ID"/><br><br>
				<s:textfield name="shipmentCart.shipmentCartDetails.ETD" label="Estimated Time of delivery in days"/><br><br>
				<s:textarea name="shipmentCart.shipmentCartDetails.shipmentAddress" label="Shipment Address"/><br><br>
			<%-- </s:push> --%>
			
		<%-- </s:push> --%>
		<s:submit name="ConfirmShipment" value="ConfirmShipment" align= "center"/><br>
	</s:form>
</body>
</html>
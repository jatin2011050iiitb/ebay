<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
  
  
   
        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Confirm Item Delivery</h1>

<s:if test="shoppingcart1.size() > 0">

<table  border="1" cellpadding="7" align="center">
<tr>
	<td align="center"><b>S. No</b></td>
	<td align="center"><b>Cart Id</b></td>
	<td align="center"><b>Seller Id</b></td>
	<td align="center"><b>Payment Confirmation</b></td>
	<td align="center"><b>Receipt Confirmation</b></td>
	<td align="center"><b>Purchase Date</b></td>
	<td align="center"><b>Grand Total</b></td>
	<td align="center"><b>Shipment Status</b></td>
			
</tr> 
<%int i=1; %>
<s:iterator value="shoppingcart1" >
<tr>
	<td align="center"><%=i%></td>
	<td align="center"><s:a href="receiptConfirmationShow.action?cartId=%{cartId}&recieptConfirmation=%{recieptConfirmation}&shipmentStatus=%{shipmentStatus}"><s:property value="cartId"/></s:a></td>
	<td align="center"><s:property value="sellerId"/></td>
	<td align="center">
		<s:if test="paymentConfirmation == 0">Unpaid</s:if>
		<s:elseif test="paymentConfirmation == 1">Success</s:elseif>
		<s:else>Failure</s:else> 
	</td>
	<td align="center">
		<s:if test="recieptConfirmation == 1">Received</s:if>
		<s:elseif test="recieptConfirmation == 2">Not Received <s:a href="receiptConfirmationShow.action?cartId=%{cartId}&recieptConfirmation=%{recieptConfirmation}&shipmentStatus=%{shipmentStatus}">( Change status )</s:a></s:elseif>
		<s:else>Failure</s:else> 
	</td>
	<td align="center"><s:property value="paymentTS"/></td>
	<td align="center"><s:property value="grandTotal"/></td>
	<td align="center"><s:property value="shipmentStatus"/></td>
</tr>
<% i++; %>
</s:iterator>
</table>


</s:if>
<s:else>
<h5>No Items Left to confirm! <br>
Hurray!!<br>
(You have received all the products!)
</h5>
</s:else>

</body>
</html>
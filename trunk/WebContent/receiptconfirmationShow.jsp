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
<h1>Receipt Confirmation Page</h1>

<h4>Cart Id: <s:property value="cartId"/></h4>
<table  border="1" cellpadding="7" align="center">
<tr>
	<td align="center"><b>S. No</b></td>
	<td align="center"><b>Product Id</b></td>
	<td align="center"><b>Product Description</b></td>
	<td align="center"><b>Quantity</b></td>
	<td align="center"><b>Unit Price</b></td>
	<td align="center"><b>Sub Total</b></td>
	<td align="center"><b>Shipping Price</b></td>
	<td align="center"><b>Seller Name</b></td>
			
</tr> 
<%int i=1; %>
<s:iterator value="shoppingcartitem" >
<tr>
	<td align="center"><%=i%></td>
	<td align="center"><s:property value="productId"/></td>
	<td align="center"><s:a href="ShowProduct?productId=%{productId}"><s:property value="productDesc"/></s:a></td>
	<td align="center"><s:property value="quantity"/></td>
	<td align="center"><s:property value="unitPrice"/></td>
	<td align="center"><s:property value="subtotal"/></td>
	<td align="center"><s:property value="shippingPrice"/></td>
	<td align="center"><s:property value="sellerName"/></td>

</tr>
<% i++; %>
</s:iterator>
</table>
<br>
Receipt Status: 
<s:if test="recieptConfirmation == 1"><b>Received</b></s:if>
<s:elseif test="recieptConfirmation == 2"><b>Not Received</b>
		<s:if test="shipmentStatus == 'shipped'">
			<s:a href="receiptConfirmationSubmit.action?cartId=%{cartId}">(Mark it received)
			</s:a>
		</s:if>
</s:elseif>
<s:else>Failure</s:else> 



</body>
</html>
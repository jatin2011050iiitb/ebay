<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gateway Demo</title>
</head>
<body>
<h3 align="center">Your Cart Details</h3><br/>
<h4>Buyer Id: <s:property value="buyerId"/></h4><br/>
<h3>Cart Id: <s:property value="cartId"/></h3>
<h4>Product: <s:property value="productName"/></h4><br/>
<h4>Amount: <s:property value="amount"/></h4><br/>
<h4>Shipping Charges : <s:property value="shippingCharge"/></h4><br/>
<h4>Total Amount: <s:property value="totalAmount"/></h4><br/>
 <s:form name="ProceedToPay" method="POST" action="ProceedToPay">             
           	<input  name="sellerId" value = "<s:property value="sellerId"/>" type="hidden"/>
           	<input  name="buyerId" value = "<s:property value="buyerId"/>" type="hidden">
           	<input  name="cartId" value = "<s:property value="cartId"/>" type="hidden">
      		<input  name="amount" value = "<s:property value="amount"/>" type="hidden">
      		<input  name="shippingCharge" value = "<s:property value="shippingCharge"/>" type="hidden">
      		<input  name="totalAmount" value = "<s:property value="totalAmount"/>" type="hidden">
      		<s:submit name="submit" id="ProceedToPay_id" value="ProceedToPay" align= "right"/><br>
      	</s:form> 


</body>
</html>
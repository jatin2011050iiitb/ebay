<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Debit Card Payment</title>
</head>
<body>
<h2 align="center">Welcome to Bank Payment GateWay</h2>
<h3><s:property value="cartId"/></h3>
<h3 align="center">Please Enter Your Debit Card Details</h3><br/>
<h4>Amount to be Paid: <s:property value="totalAmount"/></h4>
<s:form name="DebitCardPayment" method="POST" action="DebitCardPayment">             
           	<input  name="sellerId" value = "<s:property value="sellerId"/>" type="hidden"/>
           	<input  name="buyerId" value = "<s:property value="buyerId"/>" type="hidden">
      		<input  name="amount" value = "<s:property value="amount"/>" type="hidden">
      		<input  name="cartId" value = "<s:property value="cartId"/>" type="hidden">
      		<input  name="bankId" value = "<s:property value="bankId"/>" type="hidden">
      		<input  name="shippingCharge" value = "<s:property value="shippingCharge"/>" type="hidden">
      		<input  name="totalAmount" value = "<s:property value="totalAmount"/>" type="hidden">
      		<s:textfield name ="debitCardNo" label = "Debit Card Number" id="debitCardNo_id"></s:textfield>
      		<s:password name ="debitCardVerfNo" label = "CVV Number" id="debitCardVerfNo_id"></s:password>
      		<s:submit name="submit" id="ProceedToPay_id" value="ConfirmPayment" align= "center"/><br>
</s:form>


</body>
</html>
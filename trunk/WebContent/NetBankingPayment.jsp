<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NetBanking Payment</title>
</head>
<body>
<h2 align="center">Welcome to Bank Payment GateWay</h2>
<h3><s:property value="cartId"/></h3>
<h3 align="center">Please Enter Your Payment Details</h3><br/>
<h2><s:actionerror /></h2> 
<h4>Amount to be Paid: <s:property value="totalAmount"/></h4>
<s:form name="NetBankingPayment" method="POST" action="NetBankingPayment">             
           	<input  name="bankId" value = "<s:property value="bankId"/>" type="hidden">
      		<s:textfield name ="accNo" label = "Account Number" id="accNo_id"></s:textfield>
      		<s:password name ="NEFTcode" label = "NEFT code" id="NEFTcode_id"></s:password>
      		<s:submit name="submit" id="ProceedToPay_id" value="ConfirmPayment" align= "center"/><br>
</s:form>
</body>
</html>
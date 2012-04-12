<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bank Account Details</title>
</head>
<body>
<s:if test="accNo > 0">
<img src="<s:property value="imageSrc"/>">
<h4>Account No. <s:property value="accNo"/></h4>
<h4>Account Holder. <s:property value="accHolder"/></h4>
<h4>Account Balance <s:property value="accBalance"/></h4> 
<h4>Credit Limit <s:property value="creditPermited"/></h4>
<h4>Credit Card No.: <s:property value="creditCardNo"/></h4>
<h4>Debit Card No.: <s:property value="debitCardNo"/></h4>
<h4>NEFT Code: <s:property value="NEFTcode"/></h4>
</s:if>
<h3>Please Enter Details to View Your Account Info</h3>
<s:form name="ShowBankAccount" method="POST" action="ShowBankAccount">
<s:actionerror />
<s:textfield name="accNo" label="Enter Account No." ></s:textfield>
<s:radio name="selectedBank" label="Bank" list="{'Syndicate Bank','State Bank of India'}" />
<s:submit name="submit" value="ShowInfo"></s:submit>
</s:form>
</body>
</html>
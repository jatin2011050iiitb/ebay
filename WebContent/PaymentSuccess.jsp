<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Success</title>
</head>
<body>
<h3 align="center">Payment Successfully Done</h3>
<h4>Transaction Id: <s:property value="transactionId"/></h4>
<h4>Amount Paid: <s:property value="totalAmount"/></h4>
<h5>Please note down Transaction Id for future references</h5>
<a href="<%= request.getContextPath() %>">Click here to go to Ebay Home Page.</a>
</body>
</html>
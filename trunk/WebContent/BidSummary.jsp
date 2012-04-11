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

<h2> Bid Summary</h2><br><br>
<s:push value="bidBean">
Product ID: <s:property value="productId"/><br><br>
Product Description: <s:property value="productDesc"/> <br><br>
Auction ID: <s:property value="auctionId"/><br><br>
Your Bid amount: Rs.<s:property value="bidValue"/><br><br>
Bidding time: <s:property value="bidTime"/><br><br>
</s:push>

<h3>Highest bid value is: Rs.<s:property value="maxBid"/> </h3><br><br>

<h5><a href="ShowProduct.action?productId=<s:property value="bidBean.productId"/>">Back to Product Bidding Page</a></h5>


</body>
</html>
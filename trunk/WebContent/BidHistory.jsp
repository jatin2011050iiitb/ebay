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

<h2> Bid History</h2><br><br>
<h4>product Description: </h4><s:property value="product.productDesc" /><br>
<h4>product ID: </h4><s:property value="product.productId" /><br>
<h4>Seller Name: </h4><s:property value="product.sellerFName" />&nbsp;<s:property value="product.SellerLName" /><br><br>
<table>
	<tr>
		<th>BuyerId</th>
		<th>Bid value</th>
		<th>Date time</th>
	</tr>
	<s:iterator value="bidHistoryList">
		<tr>
			<td><s:property value="bidderId" /></td>
			<td><s:property value="bidValue" /></td>
			<td><s:property value="bidTime" /></td>
		</tr>
	</s:iterator>


</table>
<br><br>
<h5><a href="ShowProduct.action?productId=<s:property value="product.productId"/>">Back to Product Bidding Page</a></h5>





</body>
</html>
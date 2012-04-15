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
<h1>Products for Sell!</h1>

<table  border="1" cellpadding="7" align="center">
<tr>
<td align="center"><b>S. No</b></td>
<td align="center"><b>Product Id</b></td>
<td align="center"><b>Product Description</b></td>
<td align="center"><b>Sale Type</b></td>

</tr> 
<%int i=1; %>
<s:iterator value="allSellItems" >
<tr>

<td align="center"><%=i%></td>
<td align="center"><s:property value="productId"/></td>
<td align="center"><s:a href="ShowProduct?productId=%{productId}"><s:property value="productDesc"/></s:a></td>
<td align="center"><s:if test="saleType == 1">Buy It Now Item</s:if><s:else>Auction Item</s:else> </td>

</tr>

<% i++; %>
</s:iterator>
</table>





</body>
</html>
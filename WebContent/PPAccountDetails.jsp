<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table width="100%" border="1">
  <tr>
    <th scope="col">Transaction id </th>
    <th scope="col">Buyer Id </th>
    <th scope="col">Seller Id </th>
    <th scope="col">Cart Id </th>
    <th scope="col">Account No. </th>
    <th scope="col">Bank Id </th>
    <th scope="col">PPayAcc Id </th>
    <th scope="col">Payment Type </th>
    <th scope="col">Amount</th>
    <th scope="col">Received</th>
    <th scope="col">Paid</th>
    <th scope="col">Cancel</th>
    <th scope="col">Status</th>
  </tr>
 <s:iterator value="ppt">
  <tr>
    <td><s:property value="transactionId"/> </td>
    <td><s:property value="buyerId"/></td>
    <td><s:property value="sellerId"/></td>
    <td><s:property value="cartId"/></td>
    <td><s:property value="accNo"/></td>
    <td><s:property value="bankId"/></td>
    <td><s:property value="PPayAccId"/></td>
    <td><s:property value="paymentType"/></td>
    <td><s:property value="amount"/></td>
    <td><s:property value="pRecvTS"/></td>
    <td><s:property value="pPaidTS"/></td>
    <td><s:property value="pCancelTS"/></td>
    <td><s:property value="status"/></td>
	
  </tr>
  </s:iterator>
  
  </table> 
  
</body>
</html>
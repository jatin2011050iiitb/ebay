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
	<h4>List of products to be shipped by you.</h4><br><br>
	
	<s:iterator value="cartIdList">
		<a href="ConfirmShipmentShow.action?cartId=<s:property />" >Shipment number: s<s:property /></a><br>
	</s:iterator>
	
</body>
</html>
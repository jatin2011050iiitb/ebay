<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<sx:head />
<script type="text/javascript">
	function validateForm() {
		var difference = 0;
		var baseprice = document.forms["auctionForm"]["auctionproduct.basePrice"].value;
		var stepprice = document.forms["auctionForm"]["auctionproduct.stepPrice"].value;
		var condition = document.forms["auctionForm"]["product.prodCondition"];
		var shipstate = document.forms["auctionForm"]["product.shipmentState"];
		var start = document.forms["auctionForm"]["product.startDate"].value;
		var end = document.forms["auctionForm"]["product.endDate"].value;

		 
		 	
		if (baseprice == null || baseprice == "") {
			document.getElementById("errmsg").innerHTML = "Baseprice required!";
			return false;
		} else if (stepprice == null || stepprice == "") {
			document.getElementById("errmsg").innerHTML = "Stepprice required!";
			return false;
		}else if (condition[0].checked == false && condition[1].checked == false) {
			document.getElementById("errmsg").innerHTML = "Condition required!";
			return false;
		}else if (shipstate[0].checked == false && shipstate[1].checked == false) {
			document.getElementById("errmsg").innerHTML = "Shipping mode required!";
			return false;
		}
		if(isNaN(document.forms["auctionForm"]["auctionproduct.basePrice"].value))
		{
			document.getElementById("errmsg").innerHTML = "Please enter valid digits 0-9 for Baseprice";
			return false;
		}
		
		if(isNaN(document.forms["auctionForm"]["auctionproduct.stepPrice"].value))
		{
			document.getElementById("errmsg").innerHTML = "Please enter valid digits 0-9 for Stepprice";
			return false;
		}
		
		return true;
}
	function displayShipingCost(shipMode)
	{
		if(shipMode=="Chargeable"){
			document.getElementById("shippingCost").disabled=false;
		}
		else{
			document.getElementById("shippingCost").disabled=true;
			document.getElementById("shippingCost").value='0';
		}
	}
	
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seller Auction page</title>
</head>

<body>
<s:form name="auctionForm" action="auctionFormSubmit.action" method="post" onsubmit="return validateForm()" enctype="multipart/form-data">
<p id="errmsg"></p>
<s:doubleselect label="Category (Sub category)"
		name="category" list="mapping.keySet()" 
		doubleName="subcategory" doubleList="mapping.get(top)" />
 		
 		<s:radio label="Condition" list="{'Used','New'}" 
			name="product.prodCondition"></s:radio>
		<s:file name="photo" label="Upload Image" />
		<s:textarea label="Product Description" name="product.productDesc" />
		<sx:datetimepicker name="product.startDate"
			label="Start Date(dd-MMM-yyyy)" displayFormat="dd-MMM-yyyy"
			value="%{'today'}" />
		<sx:datetimepicker name="product.endDate"
			label="End Date(dd-MMM-yyyy)" displayFormat="dd-MMM-yyyy"
			value="%{'today'}" />
		<s:textfield label="Base Price" name="auctionproduct.basePrice" />
		<s:textfield label="Step Price" name="auctionproduct.stepPrice" />
		<s:radio label="Shipping mode" list="{'Free','Chargeable'}" onclick="displayShipingCost(this.value)"
			name="product.shipmentState"></s:radio>
		<s:textfield id="shippingCost" label="Shipping Cost" name="product.shipmentCharges" value="0" disabled="true"></s:textfield>
		<s:submit label="Submit" align="center" />
</s:form>
</body>
</html>
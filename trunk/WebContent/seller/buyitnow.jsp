<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	function validateForm() {
		var stock = document.forms["buyitnowForm"]["binproduct.stock"].value;
		var binprice = document.forms["buyitnowForm"]["binproduct.binPrice"].value;
		var condition = document.forms["buyitnowForm"]["product.prodCondition"];
		var shipstate = document.forms["buyitnowForm"]["product.shipmentState"];
		
		if (binprice == null || binprice == "") {
			document.getElementById("errmsg").innerHTML = "Buy it now required!";
			return false;
		} else if (stock == null || stock == "") {
			document.getElementById("errmsg").innerHTML = "stock required!";
			return false;
		}else if (condition[0].checked == false && condition[1].checked == false) {
			document.getElementById("errmsg").innerHTML = "Condition required!";
			return false;
		}else if (shipstate[0].checked == false && shipstate[1].checked == false) {
			document.getElementById("errmsg").innerHTML = "Shipping mode required!";
			return false;
		}
		
		if(isNaN(document.forms["buyitnowForm"]["binproduct.basePrice"].value))
		{
			document.getElementById("errmsg").innerHTML = "Please enter valid digits 0-9 for buy it now price";
			return false;
		}
		
		if(isNaN(document.forms["buyitnowForm"]["binproduct.stock"].value))
		{
			document.getElementById("errmsg").innerHTML = "Please enter valid digits 0-9 for stock";
			return false;
		}
		
		return true;
}
	function displayShipingCost(shipMode)
	{
		if(shipMode=="Chargable"){
			document.getElementById("shippingCost").disabled=false;
		}
		else{
			document.getElementById("shippingCost").disabled=true;
			document.getElementById("shippingCost").value='0';
		}
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seller Buy it now page</title>
</head>
<body>

<s:form name="buyitnowForm" action="binFormSubmit.action" method="post" onsubmit="return validateForm()" enctype="multipart/form-data">
<p id="errmsg"></p>
<s:doubleselect label="Category (Sub category)" name="category" list="mapping.keySet()" 
		doubleName="subcategory" doubleList="mapping.get(top)" />
 		
 		<s:radio label="Condition" list="{'Used','New'}" 
			name="product.prodCondition"></s:radio>
		<s:file name="photo" label="Upload Image" />
		<s:textarea label="Product Description" name="product.productDesc" />
		<s:textfield label="Stock" name="binproduct.stock" />
		<s:textfield label="Buy it now price" name="binproduct.binPrice" />
		<s:radio label="Shipping mode" list="{'Free','Chargable'}" id="shipMode"
			name="product.shipmentState" onclick="displayShipingCost(this.value)"></s:radio>
		
		<s:textfield id="shippingCost" label="Shipping Cost" name="product.shipmentCharges" value="0" disabled="true"></s:textfield>
		
		<s:submit label="Submit" align="center" />
</s:form>
</body>
</html>
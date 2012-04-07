<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="css/lhniyzzerm4fferebck2ef3qb.css">
</head>
<body>

	<div class="r3 c gy-br">
		<div class="gy">
			<div>
				<div class="r3_hm"
					style="border-width: 1px 1px 0; padding: 0; height: 5px; font-size: 0; overflow: hidden;"></div>
			</div>
			<div class="r3_hm">
				<div style="height: 20px; overflow: auto">
					<h2 class="g-m g-m0">eBay Product Page</h2>
				</div>
			</div>
		</div>
		<div class="r3_c c-sgf">
			<div class="r3_cm po">
				<div>
					<div>
						<h1 class="hidh1">Home Page</h1>
						<a name="mainContent"></a>
						<table border="0" cellpadding="0" cellspacing="0">
							<tbody>
				
				<s:push value="product"> 	
										<tr>
										
										<td valign="top" class="catContent">
									
						<img border="1" src="images_product/(<s:property value="productId"/>).JPG"
						alt="Pic not available" width="150px" height="150px" />
											 </td>
											<td valign="top" class="catContent" >
											<%-- 	<s:iterator value="productList"> 	 --%>
						<%-- <img border="1" src="images_product/(<s:property value="productId"/>).JPG"
						alt="Pic not available" width="75px" height="75px" /> --%>
					
						<h1><s:property value="productDesc"/></h1><br/>
						
						<b>Price: <s:property value="price"/></b><br/>
						<b>saleType: <s:property value="saleTypeDesc"/></b><br/>
						<b>Product Condition: <s:property value="prodCondition"/></b><br/>
						<b>shipmentState: <s:property value="shipmentState"/></b><br/>
						sellerId: <s:property value="sellerId"/><br/>
						startDate: <s:property value="startDate"/><br/>
						endDate: <s:property value="endDate"/><br/>
						shipmentCharges: <s:property value="shipmentCharges"/><br/>
						<s:form name="buyItNowForm" action="buyItNow.action"  method="post">
						<s:textfield label="Quantity:" value="1" size="1"/>&nbsp;&nbsp;
						<s:property value="product.stock" /> available
		<s:submit method="execute" label="submit" align="right" />
	</s:form>
	
				 </s:push>
									
								
								
	
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="r3_fm r3_s">
				
			</div>
		</div>
	</div>

</body>

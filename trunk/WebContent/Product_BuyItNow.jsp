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
			<div align="left" style="width: 100%; height: 35px; position: relative; left: 20px; top: 10px;">
			<s:a href="home">Home</s:a>
			>
			<s:a href="ShowSubCategory?categoryId=%{categoryDetails.CategoryId}">${categoryDetails.getCategoryDesc()}</s:a>
			>
			<s:a href="ShowProductList?subCategoryId=%{subcategorydetails.SubCategoryId}">${subcategorydetails.getSubCategoryDesc()}</s:a>
			
			
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
						seller Name: <s:property value="sellerFName"/> <s:property value="sellerLName"/><br/>
						Item number: <s:property value="productId"/><br/>
						Item location: <s:property value="sellerCity"/>, <s:property value="sellerState"/>, <s:property value="sellerCountry"/><br/>
						
						shipmentCharges: <s:property value="shipmentCharges"/><br/>
						
				 </s:push>		
						<s:form name="buyItNowForm" action="BuyItNow"  method="post">
						
						<s:textfield label="Quantity:" value="1" name="quantity" size="1"/>&nbsp;&nbsp;
						<s:property value="product.stock" /> available
						<s:submit method="execute" value="Buy It Now" align="right" />
						</s:form>
						
						 <b>Or combine multiple purchases:</b>
						
						<s:form name="addToCartForm" action="BuyItNow"  method="post">
						<s:textfield label="Quantity:" value="1" name="quantity" size="1" type="hidden" />
						<s:submit method="execute" value="Add To Cart" align="right" />
						</s:form> 
	
	
				
									
								
								
	
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

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
					<h2 class="g-m g-m0">eBay Product List</h2>
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
										<s:iterator value="productList"> 	
								<tr>
								
								<td valign="top" class="catContent"><h3>
							
				<img border="1" src="images_product/(<s:property value="productId"/>).JPG"
				alt="Pic not available" width="75px" height="75px" /></h3>
									 </td>
									<td valign="top" class="catContent" ><h3>
									<%-- 	<s:iterator value="productList"> 	 --%>
				<%-- <img border="1" src="images_product/(<s:property value="productId"/>).JPG"
				alt="Pic not available" width="75px" height="75px" /> --%>
				<a href="ShowProduct?productId=<s:property value="productId" />" >
				<s:property value="productDesc"/> </a></h3>
						<br>Product Type: 
                        <s:if test="saleType == 1">Buy It Now</s:if>
                        <s:elseif test="saleType == 2">Auction</s:elseif>
                        <s:else>Unknown</s:else><br/>	
										 </s:iterator>
									
								
						 <s:property value="searchMsg"/>								
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

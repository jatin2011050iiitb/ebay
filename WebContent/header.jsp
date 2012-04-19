<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/header.css" />
<title>eBay-India</title>
</head>
<body>
<div class="gh-w">
	<div class="gh-emn" style="text-align: right;">
		<div class="gh-hid"></div>
		<div class="gh-mn">
			<span class="gh-fst"><a rel="nofollow"
				href="MyEbayHome.action"
				id="MyEbay" class="              ">My eBay</a> </span><span id="glb_cart"></span>
			| <a href="sellItemFormShow.action" id="Sell" class="             ">Sell</a><span
				id="glb_cart"></span> | <a href="http://hub.ebay.in/community"
				id="Community" class="           ">Community</a><span id="glb_cart"></span>
			| <a
				href="http://ocs.ebay.in/ws/eBayISAPI.dll?CustomerSupportRedirect&amp;target=help"
				id="Help" class="        ">Customer Support</a><span class="gh-nho"><span></span>
			</span>
		</div>
	</div>
	<div class="gh-log">
		<span class="gh-lg"><a rel="nofollow" href="home.action">
				<img border="0" alt="eBay"
				src="images_page/logoEbay_x45.gif">
		</a> </span><span class="greeting gh-ui"> <!-- BEGIN: GREETING:SIGNEDOUT -->Welcome!

		<s:if test="%{#session.Loggedin.getStatus()!=null}" >
				<s:property value="%{#session.objectuser.getFName()}"/>
				<b>(<s:property value="#session['userName']"/>)!</b>
				<a href="logout.action"> Sign out</a>			
		</s:if>		
		<s:else>
				<a onclick="" rel="nofollow" _sp="m570.l1524" href="LoginShow.action">Sign in</a> or
				<a rel="nofollow" _sp="m570.l2621" id="registerLink" href="RegisterShow.action">register</a>
		</s:else>	
		
			<!-- END: GREETING:SIGNEDOUT --> <span id="bta"></span> </span><span
			class="coupon"></span><span></span>
	</div>
	<div class="gh-rph" style="text-align: right;">
		<span class="addllinks"><img width="15" height="15"
			src="images_page/cart.gif"> <a
			href="ShoppingCart.action">My
				Shopping Cart</a><span id="glb_cart"></span> <%-- <script
				type="text/javascript">
					vjo.darwin.core.ebayheader.cart.Cart
							.init(
									"glb_cart",
									"http://payments.ebay.in/ws/eBayISAPI.dll?GetCartDetails",
									"http://orders.ebay.in/ws/eBayISAPI.dll?ShoppingCartMgmt");
				</script>  --%>| <a href="MyPaisaPayHome.action">My
				PaisaPay</a> | <!-- <a href="http://pages.ebay.in/sitemap.html">Site Map</a> -->
		</span>
	</div>
</div>
</body>
</html>
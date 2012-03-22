<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>eBay-India</title>
</head>
<body>
	<div class="gh-emn" style="text-align: right;">
		<div class="gh-hid"></div>
		<div class="gh-mn">
			<span class="gh-fst"><a rel="nofollow"
				href="http://my.ebay.in/ws/eBayISAPI.dll?MyEbay&amp;gbh=1"
				id="MyEbay" class="              ">My eBay</a>
			</span><span id="glb_cart"></span> | <a href="http://sell.ebay.in/sell"
				id="Sell" class="             ">Sell</a><span id="glb_cart"></span>
			| <a href="http://hub.ebay.in/community" id="Community"
				class="           ">Community</a><span id="glb_cart"></span> | <a
				href="http://ocs.ebay.in/ws/eBayISAPI.dll?CustomerSupportRedirect&amp;target=help"
				id="Help" class="        ">Customer Support</a><span class="gh-nho"><span></span>
			</span>
		</div>
	</div>
	<div class="gh-log">
		<span class="gh-lg"><a rel="nofollow" href="http://www.ebay.in">
				<img border="0" alt="eBay"
				src="http://p.ebaystatic.com/aw/pics/in/logos/logoEbay_x45.gif">
		</a>
		</span><span class="greeting gh-ui">
			<!-- BEGIN: GREETING:SIGNEDOUT -->Welcome! <a onclick=""
			rel="nofollow" _sp="m570.l1524"
			href="https://signin.ebay.in/ws/eBayISAPI.dll?SignIn">Sign in</a> or
			<a rel="nofollow" _sp="m570.l2621" id="registerLink"
			href="https://scgi.ebay.in/ws/eBayISAPI.dll?RegisterEnterInfo">register</a>
		<!-- END: GREETING:SIGNEDOUT -->
			<span id="bta"></span>
		</span><span class="coupon"></span><span></span>
	</div>
	<div class="gh-rph" style="text-align: right;">
		<span class="addllinks"><img width="15" height="15"
			src="http://q.ebaystatic.com/aw/pics/cart.gif"> <a
			href="http://orders.ebay.in/ws/eBayISAPI.dll?ShoppingCartMgmt">My
				Shopping Cart</a><span id="glb_cart"></span>
		<script type="text/javascript">
			vjo.darwin.core.ebayheader.cart.Cart.init("glb_cart",
					"http://payments.ebay.in/ws/eBayISAPI.dll?GetCartDetails",
					"http://orders.ebay.in/ws/eBayISAPI.dll?ShoppingCartMgmt");
		</script>
			| <a href="http://orders.ebay.in/ws/eBayISAPI.dll?MyPaisaPaySummary">My
				PaisaPay</a> | <a href="http://pages.ebay.in/sitemap.html">Site Map</a>
		</span>
	</div>
	<form id="headerSearch" name="headerSearch"
		action="http://www.ebay.in/sch/i.html" method="get">
		<div class="gh-sbox">
			<div class="gh-fl">
				<input type="text" class="gh-tb" size="60" maxlength="300" value=""
					id="_nkw" name="_nkw" autocomplete="OFF"><select
					class="gh-sb" size="1" id="_sacat" name="_sacat"><option
						selected="selected" value="See-All-Categories">All
						Categories</option>
					<option value="11450">Clothing &amp; Accessories</option>
					<option value="174982">Shoes &amp; Other Footwear</option>
					<option value="131090">Auto Accessories &amp; Parts</option>
					<option value="267">Books &amp; Magazines</option>
					<option value="625">Cameras &amp; Optics</option>
					<option value="9800">Cars &amp; Bikes</option>
					<option value="116365">Charity</option>
					<option value="11116">Coins &amp; Notes</option>
					<option value="1">Collectibles</option>
					<option value="293">Consumer Electronics</option>
					<option value="13361">Fitness &amp; Sports</option>
					<option value="157606">Fun Stuff</option>
					<option value="11700">Home, Decor &amp; Furnishings</option>
					<option value="281">Jewellery &amp; Diamonds</option>
					<option value="137080">Kitchen &amp; Home Appliances</option>
					<option value="160">Laptops &amp; Computer Peripherals</option>
					<option value="162260">Memory Cards, Pen Drives &amp; HDD</option>
					<option value="14416">Mobile Accessories</option>
					<option value="15032">Mobile Phones</option>
					<option value="11232">Movies &amp; Music</option>
					<option value="619">Musical Instruments</option>
					<option value="26395">Perfumes, Cosmetics &amp; Health</option>
					<option value="95680">Services &amp; Real Estate</option>
					<option value="169977">Stamps</option>
					<option value="631">Tools &amp; Office Supplies</option>
					<option value="220">Toys, Games &amp; Baby</option>
					<option value="3252">Travel</option>
					<option value="1249">Video &amp; Computer Games</option>
					<option value="14324">Watches</option>
					<option value="99">Everything Else</option>
				</select><a class="gh-ss"><input type="submit" class="gh-btn"
					id="ghSearch" value="Search">
				</a>
			</div>
			<div class="gh-fl gh-as"></div>
			<div class="gh-clr"></div>
		</div>
	</form>
</body>
</html>
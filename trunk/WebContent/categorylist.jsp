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
					<h2 class="g-m g-m0">eBay Categories</h2>
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
								<tr>
									<td valign="top" class="catContent"><h3>
										<s:iterator value="categoryList"> 
												<a href="showSubCategory?categoryId=<s:property value="categoryId" />" >
														<s:property value="categoryDesc" /> </a></h3><br>	
										 </s:iterator>
									 </td>
								</tr>	
								
								
								
								<!-- <tr>
									<td valign="top" class="catContent"><h3>
											<a href="http://apparel.shop.ebay.in/" _sp="p3907.m21;">Clothing
												&amp; Accessories</a>
										</h3> <br>
										<h3>
											<a title="Shoes &amp; Other Footwear"
												href="http://shoes.ebay.in/ " _sp="p3907.m21;">Shoes
												&amp; Other Footwear</a>
										</h3> <br>
										<h3>
											<a title="Auto Accessories &amp; Parts"
												href="http://auto-parts.ebay.in" _sp="p3907.m21;">Auto
												Accessories &amp; Parts</a>
										</h3> <br>
										<h3>
											<a title="Books &amp; Magazines"
												href="http://books.shop.ebay.in/" _sp="p3907.m21;">Books
												&amp; Magazines</a>
										</h3> <br>
										<h3>
											<a title="Cameras &amp; Optics"
												href="http://cameras.shop.ebay.in/" _sp="p3907.m21;">Cameras
												&amp; Optics</a>
										</h3> <br>
										<h3>
											<a title="Cars &amp; Bikes"
												href="http://motors.shop.ebay.in/" _sp="p3907.m21;">Cars
												&amp; Bikes</a>
										</h3> <br>
										<h3>
											<a title="Charity items" href="http://charity.shop.ebay.in/"
												_sp="p3907.m21;">Charity</a>
										</h3> <br>
										<h3>
											<a title="Coins &amp; Notes"
												href="http://coins.shop.ebay.in/" _sp="p3907.m21;">Coins
												&amp; Notes</a>
										</h3> <br></td>
									<td valign="top" class="catContent"><h3>
											<a title="Collectibles"
												href="http://collectibles.shop.ebay.in/" _sp="p3907.m21;">Collectibles</a>
										</h3> <br>
										<h3>
											<a title="Consumer Electronics"
												href="http://electronics.shop.ebay.in/" _sp="p3907.m21;">Consumer
												Electronics</a>
										</h3> <br>
										<h3>
											<a title="Fitness &amp; Sports"
												href="http://sports.shop.ebay.in/" _sp="p3907.m21;">Fitness
												&amp; Sports</a>
										</h3> <br>
										<h3>
											<a title="Fun Stuff" href="http://fun.shop.ebay.in/"
												_sp="p3907.m21;">Fun Stuff</a>
										</h3> <br>
										<h3>
											<a title="Home, Decor &amp; Furnishings"
												href="http://home.shop.ebay.in/" _sp="p3907.m21;">Home,
												Decor &amp; Furnishings</a>
										</h3> <br>
										<h3>
											<a title="Jewellery &amp; Diamonds"
												href="http://jewellery.shop.ebay.in/" _sp="p3907.m21;">Jewellery
												&amp; Diamonds</a>
										</h3> <br>
										<h3>
											<a title="Kitchen &amp; Home Appliances"
												href="http://appliances.shop.ebay.in/" _sp="p3907.m21;">Kitchen
												&amp; Home Appliances</a>
										</h3> <br>
										<h3>
											<a title="Laptops &amp; Computer Peripherals"
												href="http://computers.shop.ebay.in/" _sp="p3907.m21;">Laptops
												&amp; Computer Peripherals</a>
										</h3> <br></td>
									<td valign="top" class="catContent"><h3>
											<a title="Memory Cards, Pen Drives &amp; HDD"
												href="http://digital-storage.shop.ebay.in/" _sp="p3907.m21;">Memory
												Cards, Pen Drives &amp; HDD</a>
										</h3> <br>
										<h3>
											<a title="Mobile Accessories"
												href="http://mobile-accessories.shop.ebay.in"
												_sp="p3907.m21;">Mobile Accessories</a>
										</h3> <br>
										<h3>
											<a title="Mobile Phones" href="http://mobiles.shop.ebay.in/"
												_sp="p3907.m21;">Mobile Phones</a>
										</h3> <br>
										<h3>
											<a title="Movies &amp; Music"
												href="http://movies.shop.ebay.in/" _sp="p3907.m21;">Movies
												&amp; Music</a>
										</h3> <br>
										<h3>
											<a title="Musical Instruments"
												href="http://instruments.shop.ebay.in/" _sp="p3907.m21;">Musical
												Instruments</a>
										</h3> <br>
										<h3>
											<a title="Perfumes, Cosmetics &amp; Health"
												href="http://health.shop.ebay.in/" _sp="p3907.m21;">Perfumes,
												Cosmetics &amp; Health</a>
										</h3> <br>
										<h3>
											<a title="Services &amp; Real Estate"
												href="http://realestate.shop.ebay.in/" _sp="p3907.m21;">Services
												&amp; Real Estate</a>
										</h3> <br></td>
									<td valign="top" class="catContent"><h3>
											<a title="Stamps" href="http://stamps.shop.ebay.in"
												_sp="p3907.m21;">Stamps</a>
										</h3> <br>
										<h3>
											<a title="Tools &amp; Office Supplies"
												href="http://tool.shop.ebay.in/" _sp="p3907.m21;">Tools
												&amp; Office Supplies</a>
										</h3> <br>
										<h3>
											<a title="Toys, Games &amp; Baby"
												href="http://toys.shop.ebay.in/" _sp="p3907.m21;">Toys,
												Games &amp; Baby</a>
										</h3> <br>
										<h3>
											<a title="Travel" href="http://pages.ebay.in/travel/"
												_sp="p3907.m21;">Travel</a>
										</h3> <br>
										<h3>
											<a title="Video &amp; Computer Games"
												href="http://videogames.shop.ebay.in/" _sp="p3907.m21;">Video
												&amp; Computer Games</a>
										</h3> <br>
										<h3>
											<a title="Watches" href="http://watches.shop.ebay.in/"
												_sp="p3907.m21;">Watches</a>
										</h3> <br>
										<h3>
											<a title="Everything Else"
												href="http://everythingelse.shop.ebay.in/" _sp="p3907.m21;">Everything
												Else</a>
										</h3> <br></td>
								</tr> -->
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
</html>
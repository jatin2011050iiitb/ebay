<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="css/Product_AuctionListing.css">
<title>Insert title here</title>
</head>
<body>
	<s:push value="product">
		<table class="vi-is1" cellpadding="0" cellspacing="0" border="0">
			<tbody>
				<tr>
					<td colspan="4"><div>
							<b id="mainContent"><h1 class="vi-is1-titleH1">
									<s:property value="productDesc" />
								</h1> </b>
							<h2 class="vi-is1-titleH2"></h2>
							<div class="vi-is1-pt5"></div>
						</div>
					</td>
				</tr>

				<tr>
					<td valign="top" class="catContent"><img border="1"
						src="images_product/(<s:property value="productId"/>).JPG"
						alt="Pic not available" width="150px" height="150px" /></td>
				</tr>

				<tr>
					<td colspan="4" height="10"></td>
				</tr>
				<tr>
					<th class="vi-is1-lbl">Item condition:</th>
					<td colspan="3" class="vi-is1-clr"><span
						class="vi-is1-condText"><s:property value="prodCondition" />
					</span>
					</td>
				</tr>
				<tr>
					<td colspan="4" height="10"></td>
				</tr>
				<tr>
					<th class="vi-is1-lbl">Time left:</th>
					<td colspan="3" class="vi-is1-clr"><span class="vi-is1-dt"><span
							class="vi-is1-tml">6d 00h </span><span><span>(<s:property value="endDate"/> </span><span class="vi-is1-t"> IST)</span> </span> </span><span
						class="vi-is1-s7"><span class="vi-is1-misc"></span> </span>
					</td>
				</tr>
				<tr>
					<td colspan="4" height="10"></td>
				</tr>
				<tr>
					<th class="vi-is1-lbl">Bid history:</th>
					<td colspan="3" class="vi-is1-clr"><div>
							<span class="vi-is1-s6"><span><a
									href="BidHistory.action"
									rel="nofollow"><span id="v4-27"><s:property value="bidCount"/></span> <span>bids</span>
								</a> </span> </span><span id="v4-28" class="vi-is1-tet vi-is1-rf vi-is1-dspl">[<a
								href="javascript:;">Refresh&nbsp;bidhistory</a>]</span>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="4" height="10"></td>
				</tr>
				<tr>
					<td colspan="4" height="10" class="vi-is1-solid"></td>
				</tr>
				<tr>
					<th class="vi-is1-lblp vi-is1-solidBg">Starting bid:</th>
					<td class="vi-is1-solid vi-is1-tbll"><span><span
							id="v4-29" class="vi-is1-prcp">Rs. <s:property value="price"/></span> </span>
					</td>
					<td colspan="2" class="vi-is1-solid vi-is1-tblb"></td>
				</tr>
				<tr>
					<td colspan="4" height="10" class="vi-is1-solid"></td>
				</tr>
				<tr>
					<th class="vi-is1-lblp vi-is1-solidBg"><label for="v4-30">Your
							max bid:</label>
					</th>
					
					
					
					
					<td class="vi-is1-solid vi-is1-tbll"><table cellpadding="0"
							cellspacing="0" border="0" class="vi-is1-prcp">
							<tbody>
								<tr>
									<td class="vi-is1-prcs vi-is1-cur">Rs.</td>
									<td><div>
										<form id="placebidform" name="placebidform"
								action="PlaceBid.action" method="get">
								<!--
											<input type="text" size="8" maxlength="10" name="placedBid"
												id="v4-30" class="vi-is1-tet vi-is1-mb">   -->
												</form>
											<!-- textfield for maxbid  -->
										</div>
									</td>
								</tr>
								<tr></tr>
							</tbody>
						</table>
					</td>
					



					
					<td colspan="2" class="vi-is1-solid vi-is1-tblb">
						<div>
							<form id="placebidform" name="placebidform"
								action="PlaceBid.action" method="get">
								<input type="text" size="8" maxlength="10" name="placedBid"
												id="v4-30" class="vi-is1-tet vi-is1-mb">
												<b id="v4-7" class="bn-w bn-pad psb-S"><i>Place Bid</i> <span
									id="spn_v4-7" class="bn-b psb-b psb-S"> <input
										id="but_v4-7" name="submitBid" value="Place bid" title="" type="submit">	
										<b id="txt_v4-7">Place bid</b> </span> </b><label class="g-hdn"
									for="v4-31">Place bid</label> 
							</form>
						</div></td>
					

					<!--	<input type="text" size="8" maxlength="10" name="placedBid"
												id="v4-30" class="vi-is1-tet vi-is1-mb"> 
							<input
										id="but_v4-7" name="submitBid" value="Place bid" title="" type="submit">					
												
												-->



				</tr>
				<tr>
					<th class="vi-is1-lblp vi-is1-solidBg"></th>
					<td colspan="3" class="vi-is1-solid"><span id="v4-32"
						class="vi-c-fsmt">(Enter Rs. <s:property value="price"/> or more)</span>
					</td>
				</tr>
				<tr>
					<td colspan="4" height="10" class="vi-is1-solid"></td>
				</tr>
				<tr id="watchItemMiddleRow">
					<td class="vi-is1-solid vi-is1-lbl"><div id="v4-34"></div>
					</td>
					<td class="vi-is1-solid" id="watchLabelDiv"><div id="v4-35"></div>
					</td>

				</tr>
				<tr id="">
					<td class="vi-is1-solid"></td>
					<td colspan="3" class="vi-is1-solid"><div class="vi-is1-stMsg"
							id="statusmsg" role="alert" aria-live="assertive"></div>
					</td>
				</tr>
				<tr>
					<td colspan="4" height="10" class="vi-is1-solid"></td>
				</tr>
				<tr id="sllrOffrRowId" style="display: none">
					<td colspan="4"><div>
							<div class="vi-is1-sllrOffr">
								<span><a href="#config">Special offer available</a> on
									this and additional items!</span>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="4" height="10"></td>
				</tr>
				<tr>
					<th class="vi-is1-lbl">Shipping:</th>
					<td colspan="3" class="vi-is1-clr"><span id="fshippingCost"><span
							class="vi-is1-sh-srvcCost vi-is1-hideElem vi-is1-showElem">Rs.
								<s:property value="shipmentCharges"/></span> </span><span><span> </span> </span><span id="fshippingSvc">Flat
							Rate Courier - Delivery anywhere in <s:property value="sellerCountry"/></span><span class="sh-nowrap"><a
							href="javascript:;" id="changeLocLink"
							class="vi-tl vi-is1-shpl vi-c-fsmt vi-is1-hideDisc"><span>See
									more services</span>&nbsp;<span class="vi-pla-sI vi-pla-iD"></span> </a> </span><input
						type="hidden" id="chngLocPnlJSId" value="Js-chngLoc"><b>&nbsp;</b><span
						class="sh-nowrap"><wbr> <a href="javascript:;"
							id="seeDcnt" class="vi-tl vi-is1-shpl vi-c-fsmt vi-is1-hideDisc"><span>See
									<b class="g-hdn">shipping</b> discounts</span>&nbsp;<span
								class="vi-pla-sI vi-pla-iD vi-is1-hideDiv"></span> </a> </span>
						<div id="disPnlOly_Outer" class="g-hdn"
							style="visibility: hidden; width: 175px">
							<div id="cndisPnl">
								<div>
									<div id="discountsMessaging">
										<table width="99%" class="vi-is1-s9">
											<tbody>
												<tr>
													<td style="word-wrap: break-word"><div>
															<div id="discount_msg" class="sh-discPnl"></div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<a id="disPnl_stA" href="javascript:;" class="g-hdn">Start
									of Layer</a><a id="disPnl_enA" href="javascript:;" class="g-hdn">End
									of Layer</a>
							</div>
						</div> <b>&nbsp;|&nbsp;</b><span class="vi-is1-rePol"> <span
							class="vi-is1-wrp" id="v4-37"><a rel="nofollow"
								class="vi-is1-rePol"></a><a
								onclick="vjo.darwin.pres.buying.cmp.shared.SwitchTabs.toShippingTab();"
								href="#shId">See all <b class="g-hdn">shipping</b> details</a> </span>
					</span>
						<div>
							<span id="cbtViHolder" style="display: none"></span>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="4" height="10"></td>
				</tr>
				<tr>
					<th class="vi-is1-lbl">Payments:</th>
					<td colspan="3" class="vi-is1-clr"><div id="v4-8">
							<div>
								<div class="on_pay">
									<div id="payDet1">
										<img src="images_page/logoPaisaPay_130807_62x12.gif"
											height="12" width="62" alt="PaisaPay">(Credit card,
										Debit card, Online Bank Transfer)<span> | <span
											class="g-nav pyOp"><a rel="nofollow"></a> </span> </span>
									</div>
								</div>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="4" height="10"></td>
				</tr>


			</tbody>
		</table>

		<div class="cr-w cr-bt c-gy-bdr">
			<div class="cr-cnt">
				<div>
					<table cellpadding="0" cellspacing="0" class="s-content">
						<tbody>
							<tr>
								<td><h2 class="sit">Seller info</h2></td>
							</tr>
							<tr>
								<td><div class="s-details">
										<div class="mbg">
											<a title="Seller id"
												href="#"><b
												class="g-hdn"><s:property value="sellerId" />
											</b><b><span class="mbg-nw"><s:property
															value="sellerFName" /> <s:property value="sellerLName" />
												</span> </b> </a> 
												
												
												
												<!-- In case of seller rating development -->
												
												<%-- <span class="mbg-l"> ( <a class="mbg-fb"
												title="Feedback Score Of 24"
												href="http://feedback.ebay.in/ws/eBayISAPI.dll?ViewFeedback&amp;iid=110856398844&amp;userid=artisansorissa11&amp;ssPageName=VIP:feedback&amp;ftab=FeedbackAsSeller&amp;_trksid=p4340.l2560"><b
													class="g-hdn">Feedback Score Of</b> 24</a><img
												src="http://p.ebaystatic.com/aw/pics/icon/iconYellowStar_25x25.gif"
												height="25" width="25" class="mbg-star"
												title="Yellow star icon for feedback score in between 10 to 49"
												alt="Yellow star icon for feedback score in between 10 to 49">)
											</span> <span class="mbg-l"></span> 
											
											
										</div>
										<br> <span class="s-gray z_a">96.2%&nbsp;Positive
											feedback</span>
											
											--%>
											
											
									</div>
									<div class="sRlBor"></div></td>
							</tr>
							<tr>
								<td><div class="bdg sl">
										<div>
											<a href="#" rel="nofollow">Ask a question</a>
										</div>
										<div class="s-f-da">
											<a href="#" rel="nofollow">Save this seller</a>
										</div>
										<div class="s-f-da">
											<span class="s-f-da"><a href="#">See other items <b
													class="g-hdn">from this seller</b> </a> </span>
										</div>
									</div></td>
							</tr>
							<tr></tr>
							<tr></tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>


		<div class="cr-w cr-bt c-gy-bdr">
			<div class="cr-cnt">
				<div>
					<div>
						<div class="z_b">
							<h3 class="iIt">Other item info</h3>
							<table class="sp1" cellpadding="3" summary="Other item info">
								<tbody>
									<tr>
										<td width="1%" align="right" valign="top" class="inf_lab">Item
											number:</td>
										<td valign="top"><s:property value="productId"/></td>
									</tr>
									<tr>
										<td align="right" valign="top" class="inf_lab">Item
											location:</td>
										<td valign="top"><s:property value="sellerCity"/>, <s:property value="sellerState"/>, <s:property value="sellerCountry"/></td>
									</tr>
									<tr>
										<td align="right" valign="top" class="inf_lab">Ships to:</td>
										<td valign="top"><s:property value="sellerCountry"/></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>

	</s:push>
</body>
</html>
package seller.service;

import java.sql.*;
import java.util.*;
import java.text.*;

import com.opensymphony.xwork2.ActionContext;
import java.util.Map;

import seller.model.*;
import user.model.User;

import ebay.util.DBconn;

public class auctionService {
	private DBconn dbconn = null;
	private Connection con = null;
	private PreparedStatement pst = null;

	private Statement stmt = null;
	private ResultSet resultSet1 = null;
	private ResultSet resultSet2 = null;
	private ResultSet resultSet3 = null;
	private String query1 = null;
	private String query2 = null;
	private String query3 = null;
	private String query4 = null;
	private String query5 = null;

	private int categoryId;
	private int subcategoryId;
	private int productId;
	private User user;
	
	public int getProductId(Product product) {
		try {
			
				dbconn = new DBconn();
				con = dbconn.getConnection();
				
				query4 = "SELECT productId from product where productDesc=?";
				
				pst = con.prepareStatement(query4);
				
				pst.setString(1, product.getProductDesc());
				
				System.out.println(pst);
				resultSet3=pst.executeQuery();
				
				
			
				if(resultSet3.next())
				{
					productId=resultSet3.getInt("productId");
					System.out.println("product i.d is:"+productId);
				}
				return productId;
			}

			catch (Exception e) {
				System.out.println(e.getMessage());
				return 0;
			}
			
			finally {
				dbconn.close(resultSet3);
				dbconn.close(pst);
				dbconn.close(con);
				
			}
	}
	public void insert(Product product, AuctionProduct auctionproduct, String category, String subcategory ) {
		
		try {
			
			System.out.println(product.getProductDesc());
			System.out.println(product.getProdCondition());
			
			Map session = ActionContext.getContext().getSession();
			user =(User) session.get("objectuser");
						
			//to retrieve categoryId based on the category
				
				dbconn = new DBconn();
				con = dbconn.getConnection();
				
				query1 = "SELECT categoryId from category where categoryDesc=?";
				
				pst = con.prepareStatement(query1);
				pst.setString(1, category);
				System.out.println(pst);
				resultSet1=pst.executeQuery();
				
				
				
				if(resultSet1.next())
				{
					categoryId=resultSet1.getInt("categoryId");
					System.out.println("category i.d is:"+categoryId);
				}

			}

			catch (Exception e) {
				System.out.println(e.getMessage());
			}
			
			finally {
				dbconn.close(resultSet1);
				dbconn.close(pst);
				dbconn.close(con);
//				System.out.println("first conn closed.");
			}

			try {
				
				//to retrieve categoryId based on the category
										
					dbconn = new DBconn();
					con = dbconn.getConnection();
					
					query2 = "SELECT subcategoryId from subcategory where subcategoryDesc=?";
					
					pst = con.prepareStatement(query2);
					pst.setString(1, subcategory);
					System.out.println(pst);
					resultSet2=pst.executeQuery();
					
					
					
					if(resultSet2.next())
					{
						subcategoryId=resultSet2.getInt("subcategoryId");
						System.out.println("subcategory i.d is:"+subcategoryId);
					}

				}

				catch (Exception e) {
					System.out.println(e.getMessage());
				}
				
				finally {
					dbconn.close(resultSet2);
					dbconn.close(pst);
					dbconn.close(con);
//					System.out.println("second conn closed.");
				}
				
				try {
				
				//to retrieve categoryId based on the category
					
					
					dbconn = new DBconn();
					con = dbconn.getConnection();
					
					query3 = "INSERT INTO product(subcategoryId, categoryId, productDesc, sellerId, saleType, prodCondition, startDate, endDate, shipmentState, shipmentCharges, sold) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
					
					pst = con.prepareStatement(query3);
//					System.out.println("subcategoryId="+subcategoryId);
					pst.setInt(1, subcategoryId);
//					System.out.println("categoryId="+categoryId);
					pst.setInt(2, categoryId);
//					System.out.println("product.getProductDesc()="+product.getProductDesc());
					pst.setString(3, product.getProductDesc());
//					System.out.println("user.getUserId()="+user.getUserId());
					pst.setInt(4, user.getUserId());
					
					pst.setString(5, "2");
//					System.out.println("product.getProdCondition()"+product.getProdCondition());
					pst.setString(6, product.getProdCondition());
					//java.sql.Date startdate = new SimpleDateFormat("yyyy-MM-dd").format(product.getStartDate());
					//String enddate = new SimpleDateFormat("yyyy-MM-dd").format(product.getEndDate());
					pst.setTimestamp(7, new java.sql.Timestamp(product.getStartDate().getTime()));
					pst.setTimestamp(8, new java.sql.Timestamp(product.getEndDate().getTime()));
//					System.out.println("product.getShipmentState()="+product.getShipmentState());
					pst.setString(9, product.getShipmentState());
//					System.out.println("product.getShipmentCharges()="+product.getShipmentCharges());
					pst.setInt(10, product.getShipmentCharges());
					pst.setString(11, "0");
					System.out.println("insert query="+pst);
//					System.out.println("insert query="+pst);
					pst.executeUpdate();
					
				
										
				}

				catch (Exception e) {
					System.out.println(e.getMessage());
				}
				
				finally {
					
					dbconn.close(pst);
					dbconn.close(con);
//					System.out.println("third conn closed.");
				}

				/*try {
					
					//to retrieve categoryId based on the category
												
						dbconn = new DBconn();
						con = dbconn.getConnection();
						
						query4 = "SELECT productId from product where productDesc=?";
						
						pst = con.prepareStatement(query4);
						
						pst.setString(1, product.getProductDesc());
						
						resultSet3=pst.executeQuery();
						
						System.out.println(pst);
					
						if(resultSet3.next())
						{
							productId=resultSet3.getInt("productId");
							System.out.println("product i.d is:"+productId);
						}
					}

					catch (Exception e) {
						System.out.println(e.getMessage());
					}
					
					finally {
						dbconn.close(resultSet3);
						dbconn.close(pst);
						dbconn.close(con);
//						System.out.println("fourth conn closed.");
					}	*/
				productId = getProductId(product);
					
					try {
						
						//to retrieve categoryId based on the category
													
							dbconn = new DBconn();
							con = dbconn.getConnection();
							
							query5 = "INSERT INTO auctionproduct(productId, basePrice, stepPrice, highestBidPrice) VALUES(?,?,?,?)";
							
							pst = con.prepareStatement(query5);
							
							pst.setInt(1, productId);
							pst.setInt(2, auctionproduct.getBasePrice());
							pst.setInt(3, auctionproduct.getStepPrice());
							pst.setInt(4, auctionproduct.getBasePrice());
							System.out.println(pst);
							pst.executeUpdate();
							
							
														
						}

						catch (Exception e) {
							System.out.println(e.getMessage());
						}
						
						finally {
							
							dbconn.close(pst);
							dbconn.close(con);
//							System.out.println("fifth conn closed.");
						}

		}//END OF THE METHOD

}
package user.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import user.model.Product;

import ebay.util.DBconn;

public class SearchService {
	private DBconn dbconn = null;
	private Connection con = null;
	private PreparedStatement pst = null;
	private ResultSet resultSet1 = null;
	private String query1 = null;
	private String query2 = null;
	
	public ArrayList<Product> getProductList(int categoryId, String searchItem) {
		
		ArrayList<Product> productList=new ArrayList<Product>();
		query1 = "SELECT * FROM product WHERE productDesc LIKE ?";
		query2 = "SELECT * FROM product WHERE categoryId=? AND productDesc LIKE ?";
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			if(categoryId == 0) {
				pst = con.prepareStatement(query1);
				pst.setString(1, "%"+ searchItem +"%");
			}
			else {
				pst = con.prepareStatement(query2);
				pst.setInt(1,categoryId);
				pst.setString(2, "%"+ searchItem +"%");
			}
			
			resultSet1 = pst.executeQuery();
			
			while(resultSet1.next()) {
				Product product = new Product();
				product.setProductId(resultSet1.getInt("productId"));
				product.setProductDesc(resultSet1.getString("productDesc"));
				product.setSaleType(resultSet1.getInt("saleType"));
				productList.add(product);
				//System.out.println(resultSet1.getString("productDesc"));
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
		return productList;
	}	
	
	
}

package user.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import user.model.Product;
import user.model.SubCategory;



import ebay.util.DBconn;

public class ProductService {

	private DBconn dbconn = null;
	private Connection con = null;
	private PreparedStatement pst = null;
	private ResultSet resultSet1 = null;
	private String query1 = null;
	
	public ArrayList<SubCategory> getSubCategoryList(int categoryId) {
		ArrayList<SubCategory> subCategoryList =new ArrayList<SubCategory>();
		query1 = "SELECT subcategoryId, subcategoryDesc FROM subcategory where categoryId=?";
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1,categoryId);
			resultSet1 = pst.executeQuery();
			
			while(resultSet1.next()) {
				SubCategory subcat = new SubCategory();
				subcat.setSubCategoryId(resultSet1.getInt("subcategoryId"));
				subcat.setSubCategoryDesc(resultSet1.getString("subcategoryDesc"));
				subCategoryList.add(subcat);
				//System.out.println(resultSet1.getString("subcategoryDesc"));
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
		return subCategoryList;
	}
	
	public ArrayList<Product> getProductList(int subCategoryId) {
	
		ArrayList<Product> productList=new ArrayList<Product>();
		query1 = "SELECT * FROM product where subcategoryId=?";
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1,subCategoryId);
			resultSet1 = pst.executeQuery();
			
			while(resultSet1.next()) {
				Product product = new Product();
				product.setProductId(resultSet1.getInt("productId"));
				product.setProductDesc(resultSet1.getString("productDesc"));
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

package user.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import user.model.Category;
import user.model.Product;
import user.model.SubCategory;

import com.opensymphony.xwork2.ActionSupport;

import ebay.util.DBconn;

public class BreadCrumService extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private DBconn dbconn = null;
	private Connection con = null;
	private PreparedStatement pst = null;
	private ResultSet resultSet1 = null;

	// For BreadCrum to Display in SubCategory List: i.e., Get Category Description.
	public Category getCategoryDescription(int categoryId){
		Category cat = new Category();
		String query1="select * from category where categoryId=?";
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1,categoryId);
			resultSet1 = pst.executeQuery();
			
			resultSet1.next();
			cat.setCategoryId(resultSet1.getInt("categoryId"));
			cat.setCategoryDesc(resultSet1.getString("categoryDesc"));

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
		return cat;
	}
	
	// For BreadCrum to display in Product List. i.e., SubCategory description.
	public SubCategory getSubCategoryDescription(int subCategory){
		SubCategory cat = new SubCategory();
		String query1="select * from subcategory where subcategoryId=?";
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1,subCategory);
			resultSet1 = pst.executeQuery();
			
			resultSet1.next();
			cat.setSubCategoryId(resultSet1.getInt("subCategoryId"));
			cat.setSubCategoryDesc(resultSet1.getString("subCategoryDesc"));
			cat.setCategoryId(resultSet1.getInt("categoryId"));

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
		return cat;
	}

	// For BreadCrum to display in Product Page. i.e., Product description.
	public Product getProductDescription(int productId){
		Product product = new Product();
		String query1="select productId, productDesc, categoryId, subcategoryId from product where productId=?";
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query1);
			pst.setInt(1,productId);
			resultSet1 = pst.executeQuery();
			
			resultSet1.next();
			product.setProductId(resultSet1.getInt("productId"));
			product.setProductDesc(resultSet1.getString("productDesc"));
			product.setCategoryId(resultSet1.getInt("categoryId"));
			product.setSubcategoryId(resultSet1.getInt("subcategoryId"));

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
		return product;
	}



}

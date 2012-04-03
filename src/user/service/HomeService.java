package user.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import ebay.util.*;
import user.model.*;

public class HomeService {
	
	private DBconn dbconn = null;
	private Connection con = null;
	private PreparedStatement pst = null;
	private ResultSet resultSet = null;
	private String query = null;
	
	
	public ArrayList<Category> getCategoryList() {
		
		ArrayList<Category> categoryList = new ArrayList<Category>();
		
		query = "SELECT categoryId, categoryDesc FROM category";
		
		try {
			dbconn = new DBconn();
			con = DBconn.getConnection();
			pst = con.prepareStatement(query);
			resultSet = pst.executeQuery();
			
			while(resultSet.next()) {
				Category cat = new Category();
				cat.setCategoryId(resultSet.getInt("categoryId"));
				cat.setCategoryDesc(resultSet.getString("categoryDesc"));
				categoryList.add(cat);
				System.out.println(resultSet.getString("categoryDesc"));
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet);
			dbconn.close(pst);
			dbconn.close(con);
		}
		
		return categoryList;
	}
	
	
}

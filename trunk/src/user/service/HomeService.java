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
	private ResultSet resultSet1 = null;
	private String query1 = null;
	
	
	public ArrayList<Category> getCategoryList() {
		
		ArrayList<Category> categoryList = new ArrayList<Category>();
		
		query1 = "SELECT categoryId, categoryDesc FROM category";
		
		try {
			dbconn = new DBconn();
			con = dbconn.getConnection();
			pst = con.prepareStatement(query1);
			resultSet1 = pst.executeQuery();
			
			while(resultSet1.next()) {
				Category cat = new Category();
				cat.setCategoryId(resultSet1.getInt("categoryId"));
				cat.setCategoryDesc(resultSet1.getString("categoryDesc"));
				categoryList.add(cat);
				//System.out.println(resultSet1.getString("categoryDesc"));
			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			dbconn.close(resultSet1);
			dbconn.close(pst);
			dbconn.close(con);
		}
		
		return categoryList;
	}
	
	
}

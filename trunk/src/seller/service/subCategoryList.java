package seller.service;

import java.util.*;
import java.sql.*;
import java.util.Map;
import ebay.util.DBconn;

public class subCategoryList {

	private DBconn dbconn1 = null;
	private DBconn dbconn2 = null;
	private Connection con1 = null;
	private Connection con2 = null;
	private PreparedStatement pst = null;
	private ResultSet resultSet1 = null;
	private ResultSet resultSet2 = null;
	private String query1 = null;
	
	Map mapping=new HashMap();
	
	public Map getSubCategoryList()
	{
		query1 = "SELECT * from category";
	
		try
		{
			dbconn1 = new DBconn();
			con1 = DBconn.getConnection();
			pst = con1.prepareStatement(query1);
			resultSet1 = pst.executeQuery();
	
			while(resultSet1.next())
			{
				dbconn2 = new DBconn();
				con2 = DBconn.getConnection();
				pst = con2.prepareStatement("select * from subcategory where categoryId='"+resultSet1.getInt("categoryId")+"'");
				resultSet2 = pst.executeQuery();
				ArrayList<String> options=new ArrayList<String>();
			
				while(resultSet2.next())
				{
					options.add(resultSet2.getString("subcategoryDesc"));
				}
			
				mapping.put(resultSet1.getString("categoryDesc"),options);
				dbconn2.close(resultSet2);
				dbconn2.close(pst);
				dbconn2.close(con2);

			}
			
		}
		
		catch (SQLException e) {
			System.out.println(e.getMessage());
		} 
			
		finally {
			dbconn1.close(resultSet1);
			dbconn1.close(pst);
			dbconn1.close(con1);

			dbconn2.close(resultSet2);
			dbconn2.close(pst);
			dbconn2.close(con2);
		}
		return mapping;
	}
}

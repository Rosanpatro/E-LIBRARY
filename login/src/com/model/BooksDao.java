package com.model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.db.Provider;
import com.db.Books;
public class BooksDao 
{
	public static int save(Books b) 
	{
		int status = 0 ;
		try 
		{
			Connection con = Provider.getConnection();	
			String sql = "insert into  Books values (?,?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, b.getCallno());
			pst.setString(2, b.getBookname());
			pst.setString(3, b.getAuthor());
			pst.setString(4, b.getPublisher());
			pst.setInt(5, b.getQuantity());
			status = pst.executeUpdate();
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return status;
	}

	
}

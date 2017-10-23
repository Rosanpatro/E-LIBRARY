package com.model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.db.Provider;
import com.db.Users;
public class UsersDao 
{
	public static int save(Users u) 
	{
		int status = 0 ;
		try 
		{
			Connection con = Provider.getConnection();	
			String sql = "insert into  Users values (?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, u.getUsername());
			pst.setString(2, u.getPassword());
			pst.setString(3, u.getEmail());
			pst.setString(4, u.getPhone());
			status = pst.executeUpdate();
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return status;
	}

	public static int library1(Users u) 
	{
		int status= 0 ;
		try 
		{
			Connection con = Provider.getConnection();	
			String sql = "select * from Users where email=? and password=?";
			PreparedStatement pst = con.prepareStatement(sql);
			System.out.println(u.getEmail());
			System.out.println(u.getPassword());
			pst.setString(1, u.getEmail());
			pst.setString(2, u.getPassword());
			ResultSet rs = pst.executeQuery();
			if(rs.next())
				status = 1;
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return status;
	}

	public static String getPassword(Users u) 
	{
		String password=null;
		try 
		{
			Connection con = Provider.getConnection();	
			String sql = "select password from Users where email=? ";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, u.getEmail());
			ResultSet rs = pst.executeQuery();
			if(rs.next())
				password=rs.getString(1);
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return password;
	}
}












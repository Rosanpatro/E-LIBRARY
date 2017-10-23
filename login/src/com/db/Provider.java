package com.db;
import java.sql.Connection;
import java.sql.DriverManager;
public class Provider 
{
	public static Connection getConnection() 
	{
		Connection con = null;
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection ("jdbc:mysql://localhost:3306/library1","root","root");
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return con;
	}

} 




<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.db.Provider" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<style type="text/css">
	li
	{
		float: left;
	}
	ul
	{
	
		list-style-type: none;
		margin: 0;
		padding: 0;
		overflow: hidden;
		background-color:#333; 
	}
	li a
	{
		display: inline-block;
		color: white;
		text-align: center;
		padding: 14px 16px;
		text-decoration: none; 
	}
	li a:HOVER {
	background-color: aqua;
}
</style>
<title>VIEW LIBRARIAN</title>
</head>

<body>
	<ul>
		<li> <a href="welcome.jsp">HOME</a></li>
		<li> <a href="register.jsp">ADD LIBRARIAN</a></li>
		<li> <a href=".jsp">VIEW LIBRARIAN</a></li>
		<li> <a href="com.controller.addminlogout">LOGOUT</a></li>	
	</ul>
	<%
	try
	{	
		Connection con=Provider.getConnection();
		Statement stmt=con.createStatement();
		ResultSet rst=stmt.executeQuery("select * from users");
		out.print("<table>");
		out.print("<tr>");
		out.print("<td style='width:150px'>Username</td>");
		out.print("<td style='width:150px'>Password</td>");
		out.print("<td style='width:150px'>Email</td>");
		out.print("<td style='width:150px'>Phone Number</td>");
		out.print("</tr>");
		
		while(rst.next())
		{
			out.print("<tr>");
			out.print("<td>"+rst.getString(1)+"</td>");
			out.print("<td>"+rst.getString(2)+"</td>");
			out.print("<td>"+rst.getString(3)+"</td>");
			out.print("<td>"+rst.getString(4)+"</td>");
			out.print("<td><a href=Delete.jsp?name="+rst.getString(1)+">DELETE</a></td>");
			out.print("</tr>");
		}
		
		out.print("</table>");
	}
	catch(SQLException e)
{
		
}
%>
</body>
</html>
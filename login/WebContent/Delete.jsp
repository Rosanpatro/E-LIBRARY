<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.db.Provider" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	try
	{	
		Connection con=Provider.getConnection();
		Statement stmt=con.createStatement();
		String name=request.getParameter("name");
		System.out.println(name);
		stmt.executeUpdate("DELETE FROM users WHERE Username='"+name+"'");
		response.sendRedirect("viewLibrarian.jsp");
	}
	catch(SQLException e)
	{
		
	}
	%>
</body>
</html>
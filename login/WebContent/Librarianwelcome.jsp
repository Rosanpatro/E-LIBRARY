<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<style type="text/css">
li {
	float: left;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li a {
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
<title>HOME</title>

</head>
<body>
	<%
		if ((session.getAttribute("email")) == null)
			response.sendRedirect("librarianlogin.jsp");
	%>
	<ul>
		<li><font color="white"><%=session.getAttribute("email")%></font></li>
		<li><a href="Librarianwelcome.jsp">Home</a></li>
		<li><a href="addbook.jsp">Add Book</a></li>
		<li><a href="viewbook.jsp">View Book List</a></li>
		<li><a href="issuebook.jsp">Issue Book</a></li>
		<li><a href="issuebooklist.jsp">Issue Book List</a></li>
		<li><a href="returnbook.jsp">Return Book</a></li>
		<li><a href="com.controller.LibrarianLogout">Logout</a></li>


	</ul>
	<center>
		<img src="library1.jpg" />
	</center>
</body>
</html>










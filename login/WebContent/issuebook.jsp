<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="bootstrap.min.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
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
<title>Issue Book</title>

</head>
<body>
	<ul>
		<li> <a href="Librarianwelcome.jsp">Home</a></li>
		<li> <a href="addbook.jsp">Add Book</a></li>
		<li> <a href="viewbook.jsp">View Book List</a></li>
		<li> <a href="issuebook.jsp">Issue Book</a></li>
		<li> <a href="issuebooklist.jsp">Issue Book List</a></li>
		<li> <a href="returnbook.jsp">Return Book</a></li>
		<li> <a href="com.controller.LibrarianLogout">Logout</a></li>	
	</ul>
	<font color="red" >
		<%
			if(request.getParameter("msg") != null)
				out.print(request.getParameter("msg"));
		%>
		</font>
	<form action="com.controller.Issuebook" method="post">
		<pre>
			Call No	 	:	<input type="text" name="callno" required>	 <br>
			Book Name 	:	<input type="text" name="bookname" required>	 <br>
			Author 		:	<input type="text" name="author" required>	 <br>
			Student Regd No :	<input type="text" name="studentregdno" required>	<br>
			Student Name 	:	<input type="text" name="studentname" required>	<br>
							<input type="submit" value="ISSUED BOOK" 
							class="btn btn-primary">
		</pre>
	</form>
</body>
</html>
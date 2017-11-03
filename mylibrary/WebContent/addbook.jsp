 <!DOCTYPE html>
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
<title>Add Book</title>

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
	<form action="com.controller.Addbook" method="post">
		<pre>
			Call No	 	:	<input type="text" name="callno" required>	 <br>
			Book Name 	:	<input type="text" name="bookname" required>	 <br>
			Author 		:	<input type="text" name="author" required>	 <br>
			Publisher 	:	<input type="text" name="publisher" required>	<br>
			Quantity 	:	<input type="number" name="quantity" required>	<br>
							<input type="submit" value="REGISTER" 
							class="btn btn-primary">
		</pre>
	</form>
</body>
</html>
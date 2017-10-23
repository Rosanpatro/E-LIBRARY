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
<title>HOME</title>

</head>
<body>
	<ul>
		<li> <a href="index.jsp">HOME</a></li>
		<li> <a href="adminlogin.jsp">Admin Login</a></li>
		<li> <a href="librarianlogin.jsp">Librarian Login</a></li>
		
		
		
	</ul>
	<h1>Admin Login</h1>
	
	<font color="red" >
		<%
			if(request.getParameter("msg") != null)
				out.print(request.getParameter("msg"));
		%>
		</font>
	<form action="com.controller.adminlogin" method="post">
		<pre>
			Email 		:	<input type="text" name="email">	 <br>
			Password 	:	<input type="password" name="password">	 <br>
							<input type="submit" value="Login" 
							class="btn btn-primary">
		</pre>
	</form>
</body>
</html>
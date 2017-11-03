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
<title>Add librarian</title>

</head>
<body>
	<ul>
		<li> <a href="welcome.jsp">HOME</a></li>
		<li> <a href="register.jsp">ADD LIBRARIAN</a></li>
		<li> <a href="viewLibrarian.jsp">VIEW LIBRARIAN</a></li>
		<li> <a href="com.controller.addminlogout">LOGOUT</a></li>
		
		
	</ul>
	<font color="red" >
		<%
			if(request.getParameter("msg") != null)
				out.print(request.getParameter("msg"));
		%>
		</font>
	<form action="com.controller.Register" method="post">
		<pre>
			Username 	:	<input type="text" name="username" required>	 <br>
			Password 	:	<input type="password" name="password" required>	 <br>
			Email 		:	<input type="email" name="email" required>	 <br>
			Phone 		:	<input type="text" name="phone" required>	 <br>
							<input type="submit" value="REGISTER" 
							class="btn btn-primary">
		</pre>
	</form>
</body>
</html>
















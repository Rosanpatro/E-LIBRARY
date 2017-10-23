package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.Users;
import com.model.UsersDao;

@WebServlet("/com.controller.Register")
public class Register extends HttpServlet 
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter  out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		
		Users u = new Users();
		u.setUsername(username);
		u.setPassword(password);
		u.setPhone(phone);
		u.setEmail(email);
		
		int status = UsersDao.save(u);
		if(status > 0)
			response.sendRedirect
			("register.jsp?msg=Yes Registered Successfully ...");
		else
			response.sendRedirect("register.jsp?msg=Not registered...");
		
				
	}
}














package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.Users;
import com.model.UsersDao;

@WebServlet("/com.controller.LibrarianLogin")
public class LibrarianLogin extends HttpServlet 
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter  out = response.getWriter();
		response.setContentType("text/html");
		
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		Users u = new Users();
		u.setPassword(password);
		u.setEmail(email);
		
		int status = UsersDao.library1(u);
		if(status > 0)
		{
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			response.sendRedirect("Librarianwelcome.jsp");
			
		}
		else
			response.sendRedirect("librarianlogin.jsp?msg=Invalid Emailid or Password...");
		
				
	}
}














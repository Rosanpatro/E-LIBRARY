package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/com.controller.adminlogin")
public class adminlogin extends HttpServlet 
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter  out = response.getWriter();
		response.setContentType("text/html");
		
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		if(email.equals("sipun@y.com")&&password.equals("sipun")){
			HttpSession session = request.getSession();
			session.setAttribute("sipun","true");
			request.getRequestDispatcher("welcome.jsp").include(request, response);
			
			
		}else{
			
			request.getRequestDispatcher("adminlogin.jsp?msg=Invalid Emailid or Password...").include(request, response);
			
		}
		
				
	}
}














package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.Books;
import com.model.BooksDao;

/**
 * Servlet implementation class Addbook
 */
@WebServlet("/com.controller.Addbook")
public class Addbook extends HttpServlet 
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter  out = response.getWriter();
		response.setContentType("text/html");
		
		String callno = request.getParameter("callno");
		String bookname = request.getParameter("bookname");
		String author = request.getParameter("author");
		String publisher = request.getParameter("publisher");
		String squantity = request.getParameter("quantity");
		int quantity=Integer.parseInt(squantity);
		
		
		Books b = new Books();
		b.setCallno(callno);
		b.setBookname(bookname);
		b.setAuthor(author);
		b.setPublisher(publisher);
		b.setQuantity(quantity);
		
		int status = BooksDao.save(b);
		if(status > 0)
			response.sendRedirect
			("addbook.jsp?msg=Yes Registered Successfully ...");
		else
			response.sendRedirect("addbook.jsp?msg=Not registered...");
		
				
	}
}

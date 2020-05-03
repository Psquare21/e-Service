package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class orders
 */
@WebServlet("/orders")
public class orders extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   String action= request.getParameter("action");
	   int id=Integer.parseInt(request.getParameter("id"));
	   if(action.equalsIgnoreCase("orders")) {
		   System.out.println("hello");
		   request.setAttribute("id", id);
		   request.getRequestDispatcher("myorders.jsp").forward(request, response);
	   }
	}

}

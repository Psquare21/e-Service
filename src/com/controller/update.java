package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class update
 */
@WebServlet("/update")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("In file");
		response.setContentType("text/html");
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("home")){
			response.sendRedirect("xyz.jsp");
		}	
	if(action.equalsIgnoreCase("update your profile")){
		System.out.println("update");
		request.getRequestDispatcher("update.jsp").forward(request, response);
	}
	else if(action.equalsIgnoreCase("logout")) {
		request.getSession().setAttribute("active",false);
		request.getRequestDispatcher("logout.jsp").forward(request, response);
	}
	}
}

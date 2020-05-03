package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class sp_home
 */
@WebServlet("/sp_home")
public class sp_home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		int id= Integer.parseInt(request.getParameter("id2"));
		if(action.equalsIgnoreCase("home")) {
		response.sendRedirect("sp_logged.jsp");
	}

}}

package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.tree.ExpandVetoException;

import com.bean.signup;
import com.dao.dbConnection;
import com.dao.updatemodel;

/**
 * Servlet implementation class update2
 */
@WebServlet("/update2")
public class update2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action= request.getParameter("action");
		System.out.println(action);
		if(action.equalsIgnoreCase("cancel")) {
			response.sendRedirect("xyz.jsp");
		}
		else if(action.equalsIgnoreCase("update")) {
			signup s = new signup();
			
			System.out.println(request.getParameter("id"));
			System.out.println(request.getParameter("name"));
			System.out.println(request.getParameter("mail"));
			System.out.println(request.getParameter("add"));
			s.setId(Integer.parseInt(request.getParameter("id")));
			s.setName(request.getParameter("name"));
			s.setMail(request.getParameter("mail"));
			s.setPass(request.getParameter("pass"));
			s.setAdd(request.getParameter("add"));
			s.setPhon(request.getParameter("phon"));
			s.setCity(request.getParameter("city"));
			updatemodel.update_record(s);
            
			response.sendRedirect("xyz.jsp");
		}
	}

}

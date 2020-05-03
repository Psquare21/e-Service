package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.RepaintManager;

import com.bean.signup2;
import com.dao.dbConnection;


@WebServlet("/su_verify")
public class su_verify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   
		String action = request.getParameter("action");
            if(action.equalsIgnoreCase("cancel")) {
            	response.sendRedirect("su_show.jsp");
            }
            else if(action.equalsIgnoreCase("delete")) {
            	int id = Integer.parseInt(request.getParameter("id"));
            	signup s= new signup();
            	try {
            		String sql="delete from signup where id=?";
            		 dbConnection db = new dbConnection();
            		 Connection conn= db.getConnection();
            		 PreparedStatement pst= conn.prepareStatement(sql);
            		 pst.setInt(1, id);
            		 pst.executeUpdate();
            		 
            		 response.sendRedirect("su_show.jsp");
            	
            	}catch(Exception e) {
            		e.printStackTrace();
            	}
            	
            }
	}
}

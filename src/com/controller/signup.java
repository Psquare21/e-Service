package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.dbConnection;
import com.dao.signupModel;


@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        com.bean.signup sp=new com.bean.signup();
		
		sp.setName(request.getParameter("name"));
		sp.setUid(request.getParameter("uid"));
		sp.setMail(request.getParameter("mail"));
		sp.setPass(request.getParameter("pass"));
		sp.setAdd(request.getParameter("add"));
		sp.setPhon(request.getParameter("phon"));
		sp.setCity(request.getParameter("city"));
		
		signupModel sm=new signupModel();
		sm.adduser(sp);
		try
		{
		dbConnection db =new dbConnection();
		Connection con=db.getConnection(); 
		PreparedStatement ps=con.prepareStatement("select * from signup where uname=?");  
		ps.setString(1, request.getParameter("uid"));
		ResultSet rs=ps.executeQuery();  
  		if(rs.next()) {
  			request.getRequestDispatcher("Login.jsp").include(request, response);
  		}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}

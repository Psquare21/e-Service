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
import com.dao.signup2Model;


@WebServlet("/signup2")
public class signup2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        com.bean.signup2 sp=new com.bean.signup2();
      
		
		System.out.println(request.getParameter("span"));
		sp.setName(request.getParameter("name"));
		sp.setUid(request.getParameter("uid"));
		sp.setMail(request.getParameter("mail"));
		sp.setPass(request.getParameter("pass"));
		sp.setAdd(request.getParameter("add"));
		sp.setPhon(request.getParameter("phon"));
		sp.setCity(request.getParameter("city"));
		sp.setType(request.getParameter("select"));
		sp.setSub_type(request.getParameter("span"));
		
		signup2Model sm=new signup2Model();
		sm.adduser(sp);
		
		try
		{
		dbConnection db =new dbConnection();
		Connection con=db.getConnection(); 
		PreparedStatement ps=con.prepareStatement("select * from signup2 where uname=?");  
		ps.setString(1, request.getParameter("uid"));
		ResultSet rs=ps.executeQuery();  
  		if(rs.next()) {
  			request.getRequestDispatcher("signup2_done.jsp").include(request, response);
  		}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}

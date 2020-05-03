package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.signup;
import com.dao.dbConnection;
import com.dao.loginModel;
import com.dao.signupModel;

/**
 * Servlet implementation class login
 */
@WebServlet("/login2")
public class login2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try {
			int flag=0;
			com.bean.signup2 s=new com.bean.signup2();
			String uname=request.getParameter("uid");
			s.setUid(request.getParameter("uid"));
			s.setPass(request.getParameter("pass"));
			System.out.println(uname);
			String sql="select * from sp_verify where uname=? AND pass=?";
		       dbConnection db=new dbConnection();
		       Connection conn = db.getConnection();    
		       PreparedStatement pst=conn.prepareStatement(sql);
		       pst.setString(1, s.getUid());
		       pst.setString(2, s.getPass());
		       java.sql.ResultSet rs= pst.executeQuery();
				
		       if(rs.first())
		       {
		    	   flag=1;
		       }
		       else {
		    	   flag=0;  
		     	}
			if(flag==1)
			{
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("fname"));
				s.setMail(rs.getString("email"));
				s.setPhon(rs.getString("phon"));
				s.setAdd(rs.getString("address"));
				s.setSub_type(rs.getString("sub"));
				s.setType(rs.getString("type"));
				HttpSession session=request.getSession(true);
				
				session.setAttribute("user", s);
				response.sendRedirect("sp_logged.jsp");
				
			}
			else
			{
				out.println("User Name Or Password Are Incorrect");
				request.getRequestDispatcher("Login.jsp").include(request, response);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}


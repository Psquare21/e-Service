package com.controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.dao.dbConnection;
import com.mysql.jdbc.PreparedStatement;
/**
 * Servlet implementation class book
 */
@WebServlet("/book")
public class book extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action=request.getParameter("action");
		if(action.equalsIgnoreCase("cancel")) {
			response.sendRedirect("xyz.jsp");
		}else if(action.equalsIgnoreCase("select service provider")) {
			String  xy = request.getParameter("select1");
			String ab = request.getParameter("select2");
			String comments = request.getParameter("comm");
			request.setAttribute("xy", xy);
			request.setAttribute("ab", ab);
		
		    try {
		    	String sql="insert into order1(su_id,type,sub,comments) values(?,?,?,?)";
		    	String sql1="delete from order1 where su_id=?";
		    	dbConnection db = new dbConnection();
		    	Connection conn =db.getConnection();
		    	HttpSession session =request.getSession(false);
		    	java.sql.PreparedStatement pst = conn.prepareStatement(sql1);
		        pst.setString(1, request.getParameter("id"));
		        pst.executeUpdate();
		        
		        pst = conn.prepareStatement(sql);
		        pst.setString(1, request.getParameter("id"));
		    	pst.setString(2, xy);
		    	pst.setString(3, ab);
		    	pst.setString(4, comments);
		    	pst.executeUpdate();
		    }
		    catch(Exception e) {
		    	e.printStackTrace();
		    }
			request.getRequestDispatcher("sp_select.jsp").forward(request, response);
		}
	}
}

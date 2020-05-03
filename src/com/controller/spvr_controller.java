package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.sp_verify;
import com.dao.dbConnection;

/**
 * Servlet implementation class spvr_controller
 */
@WebServlet("/spvr_controller")
public class spvr_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		int id=Integer.parseInt(request.getParameter("id"));
		if(action.equalsIgnoreCase("details")){
	     sp_verify sp = new sp_verify();
	     System.out.println(id+ "hello");
	     try {
	    	 dbConnection db =new dbConnection();
	    	 Connection conn = db.getConnection();
	    	 String sql="select * from sp_verify where id=?";
	    	 java.sql.PreparedStatement pst = conn.prepareStatement(sql);
	    	 pst.setInt(1, id);
	    	 ResultSet rs= pst.executeQuery();
	    	 if(rs.next()) {
	    		 sp.setId(rs.getInt("id"));
	    		 sp.setUid(rs.getString("uname"));
	    		 sp.setName(rs.getString("fname"));
	    		 sp.setPhon(rs.getString("phon"));
	    		 sp.setAdd(rs.getString("address"));
	    		 sp.setCity(rs.getString("city"));
	    		 sp.setMail(rs.getString("email"));
	    		 sp.setType(rs.getString("type"));
	    	 }
	     }catch(Exception e) {
	    	 e.printStackTrace();
	     }
		 request.setAttribute("id1", sp );
		 request.getRequestDispatcher("spvr_info.jsp").forward(request, response);
	}
	}

}

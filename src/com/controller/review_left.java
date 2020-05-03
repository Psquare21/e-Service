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

import com.bean.order_temp;
import com.bean.sp_verify;
import com.dao.dbConnection;

/**
 * Servlet implementation class review_left
 */
@WebServlet("/review_left")
public class review_left extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action =request.getParameter("action");
		int order_id=Integer.parseInt(request.getParameter("id"));
		if(action.equalsIgnoreCase("details")){
			try {
				order_temp or =new order_temp();
				sp_verify sp = new sp_verify();
			 dbConnection db =new dbConnection();
	    	 Connection conn = db.getConnection();
	    	 String sql="select * from order_c where order_id=?";
	    	 java.sql.PreparedStatement pst = conn.prepareStatement(sql);
	    	 pst.setInt(1, order_id);
	    	 ResultSet rs = pst.executeQuery();
	    	 if(rs.next()) {
	    		 
				    or.setOrder_id(rs.getInt("order_id"));
					or.setSp_id(rs.getInt("sp_id"));
					or.setSu_id(rs.getInt("su_id"));
					or.setSp_name(rs.getString("sp_name"));
					or.setSu_name(rs.getString("su_name"));
					or.setType(rs.getString("type"));
					or.setSub(rs.getString("sub"));
					or.setComm(rs.getString("comments"));
	    	 }
	    	 System.out.println(or.getSp_name());
	    	 request.setAttribute("or", or);
	    	 
	    	 String sql2="select * from sp_verify where id=?";
	    	 pst = conn.prepareStatement(sql2);
	    	 pst.setInt(1, or.getSp_id());
	    	 rs= pst.executeQuery();
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
	    	 request.setAttribute("sp", sp);
	    	 request.getRequestDispatcher("orderleft_details.jsp").forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}
			
			
	
	}
	else if(action.equalsIgnoreCase("give review")) {
		try {
			System.out.println("a");
		order_temp or =new order_temp();
		sp_verify sp = new sp_verify();
	 dbConnection db =new dbConnection();
	 Connection conn = db.getConnection();
	 String sql="select * from order_c where order_id=?";
	 PreparedStatement pst = conn.prepareStatement(sql);
	 pst.setInt(1, order_id);
	 ResultSet rs = pst.executeQuery();
	 System.out.println("b");
	 if(rs.next()) {
		 
		    or.setOrder_id(rs.getInt("order_id"));
			or.setSp_id(rs.getInt("sp_id"));
			or.setSu_id(rs.getInt("su_id"));
			or.setSp_name(rs.getString("sp_name"));
			or.setSu_name(rs.getString("su_name"));
			or.setType(rs.getString("type"));
			or.setSub(rs.getString("sub"));
			or.setComm(rs.getString("comments"));
	 }
	 System.out.println(or.getSp_name());
	 request.setAttribute("or", or);
	 
	 String sql2="select * from sp_verify where id=?";
	 pst = conn.prepareStatement(sql2);
	 pst.setInt(1, or.getSp_id());
	 rs= pst.executeQuery();
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
	 request.setAttribute("sp", sp);
	 System.out.println("b");
	 String sql3= " select * from order_done where order_id=?";
	 pst = conn.prepareStatement(sql3);
	 pst.setInt(1, order_id);
	 rs = pst.executeQuery();
	 if(rs.next()) {
	 request.setAttribute("bol", rs.getInt("review_done"));
	 request.setAttribute("review", rs.getString("su_review"));
	 }
	 
	 request.getRequestDispatcher("review_write.jsp").forward(request, response);
	}catch(Exception e) {
		e.printStackTrace();
	}
		

}
}}
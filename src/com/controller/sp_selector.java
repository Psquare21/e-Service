package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.order_temp;
import com.bean.signup;
import com.bean.sp_verify;
import com.dao.dbConnection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class sp_selector
 */
@WebServlet("/sp_selector")
public class sp_selector extends HttpServlet {
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
		 request.getRequestDispatcher("sp_info.jsp").forward(request, response);
	}
		else if(action.equalsIgnoreCase("select")) {
			sp_verify sp = new sp_verify();
			order_temp or =new order_temp();
			signup si = new signup();
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
		    	 HttpSession session = request.getSession(false);
		    	 si = (signup) session.getAttribute("user");
		    	 
			    		 
		    	 String sql1="select * from order1 where su_id=?";
		    	 pst = conn.prepareStatement(sql1);
		    	 pst.setInt(1, si.getId());
		    	 rs= pst.executeQuery();
		    	 if(rs.next()) {
		    		 or.setOrder_id(rs.getInt("order_id"));
		    		 System.out.println(or.getOrder_id());
		    		 or.setSp_name(rs.getString("sp_name"));
		    		 or.setSu_name(rs.getString("su_name"));
		    		 or.setType(rs.getString("type"));
		    		 or.setSub(rs.getString("sub")); 
		    		 or.setComm(rs.getString("comments"));
		    	 }
		    	 
		    	 String sql2="update order1 set sp_id=?, sp_name=?, su_name=? where order_id=?";
			     pst =conn.prepareStatement(sql2);
			     pst.setInt(1, sp.getId());
			     pst.setString(2, sp.getName());
			     pst.setString(3, si.getName());
			     pst.setInt(4, or.getOrder_id());
			     pst.executeUpdate();
			      or.setSp_id(sp.getId());
			      or.setSp_name(sp.getName());
			      or.setSu_name(si.getName());
		   
		     }catch(Exception e) {
		    	 e.printStackTrace();
		     }
		     request.setAttribute("sp1", sp);
		     request.setAttribute("or1", or);
		     
		     
		     request.getRequestDispatcher("order_con.jsp").forward(request, response);
		      
		}
		else if(action.equalsIgnoreCase("reviews")) {
			request.setAttribute("id", id);
			request.getRequestDispatcher("show_reviews.jsp").forward(request, response);
		}
	}
}

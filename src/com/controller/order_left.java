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
 * Servlet implementation class order_left
 */
@WebServlet("/order_left")
public class order_left extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("In file");
		String action = request.getParameter("action");
		int order_id=Integer.parseInt(request.getParameter("id"));
		if(action.equalsIgnoreCase("details")) {
			try {
				System.out.println("In file1");
				order_temp or =new order_temp();
				sp_verify sp = new sp_verify();
			 dbConnection db =new dbConnection();
	    	 Connection conn = db.getConnection();
	    	 String sql="select * from order_f where order_id=?";
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
		}catch(Exception e) {
			e.printStackTrace();
		}
			
			request.getRequestDispatcher("orderleft_details.jsp").forward(request, response);
	}
		
		else if(action.equalsIgnoreCase("completed")){
			order_temp or =new order_temp();
			try {
				dbConnection db = new dbConnection();
				 Connection conn = db.getConnection();
				 String sql="select * from order_f where order_id=?";
				 PreparedStatement pst= conn.prepareStatement(sql);
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
				 
				 String sql1="insert into order_c(order_id,sp_id,su_id,sp_name,su_name,type,sub,comments) values(?,?,?,?,?,?,?,?)";
					pst = conn.prepareStatement(sql1);
					pst.setInt(1, or.getOrder_id());
					pst.setInt(2, or.getSp_id());
					pst.setInt(3, or.getSu_id());
					pst.setString(4, or.getSp_name());
					pst.setString(5, or.getSu_name());
					pst.setString(6, or.getType());
					pst.setString(7, or.getSub());
					pst.setString(8, or.getComm());
					pst.executeUpdate();
					
				String sql2="delete from order_f where order_id=?";
				pst =conn.prepareStatement(sql2);
				pst.setInt(1, order_id);
				pst.executeUpdate();
				
				
				String sql3="insert into order_done(order_id,su_done,review_done,sp_id) values(?,1,0,?)";
				pst= conn.prepareStatement(sql3);
				pst.setInt(1, order_id);
				pst.setInt(2, or.getSp_id());
				pst.executeUpdate();
			response.sendRedirect("order_left.jsp");
			
			}catch(Exception e) {
				e.printStackTrace();
			}
		}

}
}

	
	
	
	
	
	
	
	
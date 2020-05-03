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
import com.dao.dbConnection;

/**
 * Servlet implementation class order_details
 */
@WebServlet("/order_details")
public class order_details extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action =request.getParameter("action");
		int sp_id =Integer.parseInt(request.getParameter("id1"));
		int su_id =Integer.parseInt(request.getParameter("id"));
		if(action.equalsIgnoreCase("details")) {
			try {
			dbConnection db =new dbConnection();
			Connection conn = db.getConnection();
			String sql="select * from order_f where sp_id=? and su_id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, sp_id);
			pst.setInt(2, su_id);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				order_temp or =new order_temp();
				or.setOrder_id(Integer.parseInt(rs.getString("order_id")));
				or.setSp_id(sp_id);
				or.setSu_id(su_id);
				or.setSu_name(rs.getString("su_name"));
				or.setComm(rs.getString("comments"));
				or.setType(rs.getString("type"));
				or.setSub(rs.getString("sub"));
				request.setAttribute("or", or);
				System.out.println(rs.getString("su_name"));
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
			request.getRequestDispatcher("su_details.jsp").forward(request, response);
	}

}}

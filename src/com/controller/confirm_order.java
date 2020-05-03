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
 * Servlet implementation class confirm_order
 */
@WebServlet("/confirm_order")
public class confirm_order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action= request.getParameter("action");
		int order_id = Integer.parseInt(request.getParameter("or_id"));
		order_temp or = new order_temp();
		if(action.equalsIgnoreCase("cancel")) {
			response.sendRedirect("xyz.jsp");
		}
		else if(action.equalsIgnoreCase("confirm")) {
			
			try {
				dbConnection db = new dbConnection();
				Connection conn= db.getConnection();
				System.out.println(order_id);
				String sql="select * from order1 where order_id=?";
				PreparedStatement pst=conn.prepareStatement(sql);
				pst.setInt(1, order_id);
				System.out.println(order_id);
				ResultSet rs= pst.executeQuery();
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
				
				System.out.println(rs.getInt("order_id"));
				
				String sql1="insert into order_f(order_id,sp_id,su_id,sp_name,su_name,type,sub,comments) values(?,?,?,?,?,?,?,?)";
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
				
				response.sendRedirect("xyz.jsp");
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}

}

package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.dbConnection;

/**
 * Servlet implementation class review_done
 */
@WebServlet("/review_done")
public class review_done extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action= request.getParameter("action");
		int order_id =Integer.parseInt(request.getParameter("id"));
		String review=request.getParameter("review");
		if(action.equalsIgnoreCase("done")) {
		try {
			dbConnection db =new dbConnection();
			Connection conn= db.getConnection();
			String sql="update order_done set su_review=?,review_done=1 where order_id=?";
			PreparedStatement  pst = conn.prepareStatement(sql);
			pst.setString(1, review);
			pst.setInt(2, order_id);
			pst.executeUpdate();
			response.sendRedirect("review_left.jsp");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
		else if(action.equalsIgnoreCase("cancel")) {
			response.sendRedirect("review_left.jsp");
		}
	}
}

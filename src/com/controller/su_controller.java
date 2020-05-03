package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.signup;
import com.dao.dbConnection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class su_controller
 */
@WebServlet("/su_controller")
public class su_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		signup si =new signup();
		si.setId(Integer.parseInt(request.getParameter("idaj")));
		System.out.println(si.getId());
		try {
			dbConnection db =new dbConnection();
			Connection conn = db.getConnection();
			String sql="select * from signup where id=?";
			java.sql.PreparedStatement pst= conn.prepareStatement(sql);
			pst.setInt(1, si.getId());
			ResultSet rs= pst.executeQuery();
			if(rs.next()) {

				si.setName(rs.getString("fname"));
				si.setUid(rs.getString("uname"));
				si.setMail(rs.getString("email"));
				si.setPhon(rs.getString("phon"));
				si.setAdd(rs.getString("address"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("xy", si);
		request.getRequestDispatcher("su_verify.jsp").forward(request, response);
	}
	

}









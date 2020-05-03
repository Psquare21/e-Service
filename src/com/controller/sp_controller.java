package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.signup2;
import com.dao.dbConnection;
import com.mysql.jdbc.PreparedStatement;


@WebServlet("/sp_controller")
public class sp_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		signup2 s2= new signup2();
		
		int id =Integer.parseInt(request.getParameter("id"));
		try {
			dbConnection db = new dbConnection();
			Connection conn = db.getConnection();
			String sql=" select * from signup2 where id=?";
			java.sql.PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1,id);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				s2.setId(rs.getInt("id"));
				s2.setName(rs.getString("fname"));
				s2.setUid(rs.getString("uname"));
				s2.setMail(rs.getString("email"));
				s2.setPhon(rs.getString("phon"));
				s2.setAdd(rs.getString("address"));
				s2.setType(rs.getString("type"));
				s2.setSub_type(rs.getString("sub"));
				request.setAttribute("a", s2);
				request.getRequestDispatcher("sp_verify.jsp").forward(request, response);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}

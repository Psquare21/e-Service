package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.RepaintManager;

import com.bean.signup2;
import com.dao.dbConnection;


@WebServlet("/sp_verify")
public class sp_verify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   
		String action = request.getParameter("action");
            if(action.equalsIgnoreCase("cancel")) {
            	response.sendRedirect("sp_show.jsp");
            }
            else if(action.equalsIgnoreCase("verify")) {
            	int id = Integer.parseInt(request.getParameter("id"));
            	signup2 s= new signup2();
            	try {
            		String sql="select * from signup2 where id=?";
            		 dbConnection db = new dbConnection();
            		 Connection conn= db.getConnection();
            		 PreparedStatement pst= conn.prepareStatement(sql);
            		 pst.setInt(1, id);
            		 ResultSet rs = pst.executeQuery();
            		 if(rs.next()) {
            			 signup2 sad = new signup2();
            			 sad.setId(rs.getInt("id"));
            			 sad.setName(rs.getString("fname"));
            			 sad.setUid(rs.getString("uname"));
            			 sad.setMail(rs.getString("email"));
            			 sad.setPass(rs.getString("pass"));
            			 sad.setPhon(rs.getString("phon"));
            			 sad.setAdd(rs.getString("address"));
            			 sad.setCity(rs.getString("city"));
            			 sad.setType(rs.getString("type"));
            			 sad.setSub_type(rs.getString("sub"));
            			 
            		  String sql1="delete from signup2 where id=?";
            		  String sql2="insert into sp_verify(id,fname,uname,email,pass,address,phon,city,type,sub) values(?,?,?,?,?,?,?,?,?,?)";
            		  pst = conn.prepareStatement(sql2);
            		  pst.setInt(1, id);
            		  pst.setString(2, sad.getName());
            		  pst.setString(3, sad.getUid());
            		  pst.setString(4, sad.getMail());
            		  pst.setString(5, sad.getPass());
            		  pst.setString(6, sad.getAdd());
            		  pst.setString(7, sad.getPhon());
            		  pst.setString(8, sad.getCity());
            		  pst.setString(9, sad.getType());
            		  pst.setString(10, sad.getSub_type());
            		  pst.executeUpdate();
            		  pst= conn.prepareStatement(sql1);
            		  
            		  pst.setInt(1, id);
            		  pst.executeUpdate();
            		  
            		 }
            		 response.sendRedirect("sp_show.jsp");
            	}catch(Exception e) {
            		e.printStackTrace();
            	}
            	
            }
	}
}

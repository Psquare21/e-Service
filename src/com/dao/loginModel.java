package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.signup;

public class loginModel {
 
	public signup searchUser(String uid) {
		
	
	signup s=new signup();
	try {
		dbConnection db=new dbConnection();
		Connection conn=db.getConnection();
		String sql="select * from signup where uname=?";
		PreparedStatement pst=conn.prepareStatement(sql);
		pst.setString(1, uid);
		ResultSet rs=pst.executeQuery();
		if(rs.next()) {
			s.setId(rs.getInt("id"));
			s.setUid(rs.getString("uname"));
			s.setName(rs.getString("fname")); 
			s.setAdd(rs.getString("address"));
			s.setCity(rs.getString("city"));
			s.setMail(rs.getString("email"));
			s.setPass(rs.getString("pass"));
			s.setPhon(rs.getString("phon"));			
			System.out.println("XYZ");
		}
	}
		catch(Exception e) {
			e.printStackTrace();
		}
	return s;
		
	}
}

package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.signup;

public class updatemodel {

	
	public static void update_record(signup s) {
try {
				
	String sql="update signup set fname=?,email=?,pass=?,address=?,phon=?,city=? where id=?";
			dbConnection db= new dbConnection();
			Connection conn= db.getConnection();
			PreparedStatement pst= conn.prepareStatement(sql);
			pst.setString(1, s.getName());
			pst.setString(2, s.getMail());
			pst.setString(3, s.getPass());
			pst.setString(4, s.getAdd());
			pst.setString(5, s.getPhon());
			pst.setString(6, s.getCity());
			pst.setInt(7, s.getId());
			pst.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
			}	 
	}
}

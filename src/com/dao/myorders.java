package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.signup;
import com.bean.signup2;
import com.mysql.jdbc.PreparedStatement;

public class myorders {
 
	public static List<signup> get_allorders(int sp_id){
		List<signup> list = new ArrayList<>();
		System.out.println(sp_id);
		try {
		dbConnection db =new dbConnection();
		Connection conn= db.getConnection();
		String sql="select * from order_f where sp_id=?";
		java.sql.PreparedStatement pst= conn.prepareStatement(sql);
		pst.setInt(1, sp_id);
		ResultSet rs= pst.executeQuery();
		while(rs.next()) {
			signup s = new signup();
			s.setId(rs.getInt("su_id"));
			String sql1="select * from signup where id=?";
			java.sql.PreparedStatement pst1= conn.prepareStatement(sql1);
			pst1.setInt(1, s.getId());
			ResultSet rs1= pst1.executeQuery();
			rs1.next();
			s.setName(rs1.getString("fname"));
			s.setPhon(rs1.getString("phon"));
			s.setMail(rs1.getString("email"));
			s.setAdd(rs1.getString("address"));
			list.add(s);
		}
		return list;
		
	}catch(Exception e) {
		e.printStackTrace();
		System.out.println("hello list");
		return null;
	}
}
}

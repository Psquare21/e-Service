package com.dao;



import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.bean.signup;
import com.bean.sp_verify;

public class sp_select {

	public static java.util.List<sp_verify> select_sp(String type, String sub){
		
	List<sp_verify> list = new ArrayList<>();
	
	try {
		dbConnection db =new dbConnection();
		Connection conn= db.getConnection();
		String sql="select * from sp_verify where type=?";
		PreparedStatement pst=conn.prepareStatement(sql);
		pst.setString(1, type);
		ResultSet rs =pst.executeQuery();
		while(rs.next())
		{
			String x=rs.getString("sub");
			if(x.contains(sub)) {
			sp_verify s = new sp_verify();
			s.setId(rs.getInt("id"));
			s.setAdd(rs.getString("address"));
			s.setCity(rs.getString("city"));
			s.setMail(rs.getString("email"));
			s.setName(rs.getString("fname"));
			s.setPass(rs.getString("pass"));
			s.setPhon(rs.getString("phon"));
			s.setUid(rs.getString("uname"));
			s.setType(rs.getString("type"));
			s.setSub_type(rs.getString("sub"));
			list.add(s);
		}
		}
	 }catch(Exception e) {
		 e.printStackTrace();
	 }
	return list;
	
	}
}

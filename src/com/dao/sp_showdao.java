package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.signup;
import com.bean.signup2;

public class sp_showdao {
	
		public static int getsp_num() {
			int val=0;
			try {
				dbConnection db =new dbConnection();
				Connection conn=db.getConnection();
				String sql="select * from signup2";
				PreparedStatement pst= conn.prepareStatement(sql);
				ResultSet rs = pst.executeQuery();
				while(rs.next()) {
					val++;
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return val;
		}
		
		public static int getspvr_num() {
			int val=0;
			try {
				dbConnection db =new dbConnection();
				Connection conn=db.getConnection();
				String sql="select * from sp_verify";
				PreparedStatement pst= conn.prepareStatement(sql);
				ResultSet rs = pst.executeQuery();
				while(rs.next()) {
					val++;
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return val;
		}
		
	public static int getsu_num() {
		int val=0;
		try {
			dbConnection db =new dbConnection();
			Connection conn=db.getConnection();
			String sql="select * from signup";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs= pst.executeQuery();
			while(rs.next()) {
				val++;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return val;
	}
	
	
     public static List<signup2> getallsp() {
    	 
    	 List<signup2> list =new ArrayList<>();
    	try {
    		dbConnection db =new dbConnection();
    		Connection conn= db.getConnection();
    		String sql="select * from signup2";
    		PreparedStatement pst=conn.prepareStatement(sql);
    		ResultSet rs =pst.executeQuery();
    		while(rs.next())
    		{
    			signup2 s = new signup2();
    			s.setId(rs.getInt("id"));
    			s.setAdd(rs.getString("address"));
    			s.setCity(rs.getString("city"));
    			s.setMail(rs.getString("email"));
    			s.setName(rs.getString("fname"));
    			s.setPass(rs.getString("pass"));
    			s.setPhon(rs.getString("phon"));
    			s.setType(rs.getString("type"));
    			s.setUid(rs.getString("uname"));
    			list.add(s);
    		}
    	 }catch(Exception e) {
    		 e.printStackTrace();
    	 }
    	return list;
}
 public static List<signup2> getallspvr() {
    	 
    	 List<signup2> list =new ArrayList<>();
    	try {
    		dbConnection db =new dbConnection();
    		Connection conn= db.getConnection();
    		String sql="select * from sp_verify";
    		PreparedStatement pst=conn.prepareStatement(sql);
    		ResultSet rs =pst.executeQuery();
    		while(rs.next())
    		{
    			signup2 s = new signup2();
    			s.setId(rs.getInt("id"));
    			s.setAdd(rs.getString("address"));
    			s.setCity(rs.getString("city"));
    			s.setMail(rs.getString("email"));
    			s.setName(rs.getString("fname"));
    			s.setPass(rs.getString("pass"));
    			s.setPhon(rs.getString("phon"));
    			s.setType(rs.getString("type"));
    			s.setUid(rs.getString("uname"));
    			list.add(s);
    		}
    	 }catch(Exception e) {
    		 e.printStackTrace();
    	 }
    	return list;
}
     
  public static List<signup> getallsu() {
    	 
    	 List<signup> list =new ArrayList<>();
    	try {
    		dbConnection db =new dbConnection();
    		Connection conn= db.getConnection();
    		String sql="select * from signup";
    		PreparedStatement pst=conn.prepareStatement(sql);
    		ResultSet rs =pst.executeQuery();
    		while(rs.next())
    		{
    			signup s = new signup();
    			s.setId(rs.getInt("id"));
    			s.setAdd(rs.getString("address"));
    			s.setCity(rs.getString("city"));
    			s.setMail(rs.getString("email"));
    			s.setName(rs.getString("fname"));
    			s.setPass(rs.getString("pass"));
    			s.setPhon(rs.getString("phon"));
    			s.setUid(rs.getString("uname"));
    			list.add(s);
    		}
    	 }catch(Exception e) {
    		 e.printStackTrace();
    	 }
    	return list;
}
}
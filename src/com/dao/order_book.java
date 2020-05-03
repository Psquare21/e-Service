package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.order_temp;

public class order_book {

	public static int get_bookorder(int id) {
		int count=0;
		try {
		System.out.println(id);
		 dbConnection db = new dbConnection();
		 Connection conn = db.getConnection();
		 String sql="select * from order_f where su_id=?";
		 PreparedStatement pst=conn.prepareStatement(sql);
		 pst.setInt(1, id);
		 ResultSet rs =pst.executeQuery();
		 while(rs.next()) {
			 count++;
		 }
	}catch(Exception e) {
		e.printStackTrace();
	}
		return count;
}
	
	public static int get_comorder(int id) {
		int count=0;
		try {
		System.out.println(id);
		 dbConnection db = new dbConnection();
		 Connection conn = db.getConnection();
		 String sql="select * from order_c where su_id=?";
		 PreparedStatement pst=conn.prepareStatement(sql);
		 pst.setInt(1, id);
		 ResultSet rs =pst.executeQuery();
		 while(rs.next()) {
			 count++;
		 }
	}catch(Exception e) {
		e.printStackTrace();
	}
		return count;
}
	public static List<order_temp> get_leftorder(int id){
		
		List<order_temp> list = new ArrayList<>();
		try {
			dbConnection db = new dbConnection();
			 Connection conn = db.getConnection();
			 String sql="select * from order_f where su_id=?";
			 PreparedStatement pst= conn.prepareStatement(sql);
			 pst.setInt(1, id);
			 ResultSet rs = pst.executeQuery();
			 while(rs.next()) {
				 order_temp or =new order_temp();
				 or.setOrder_id(rs.getInt("order_id"));
					or.setSp_id(rs.getInt("sp_id"));
					or.setSu_id(rs.getInt("su_id"));
					or.setSp_name(rs.getString("sp_name"));
					or.setSu_name(rs.getString("su_name"));
					or.setType(rs.getString("type"));
					or.setSub(rs.getString("sub"));
					or.setComm(rs.getString("comments"));
				list.add(or);
			 }
			 
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
public static List<order_temp> get_revieworder(int id){
		
		List<order_temp> list = new ArrayList<>();
		try {
			dbConnection db = new dbConnection();
			 Connection conn = db.getConnection();
			 String sql="select * from order_c where su_id=?";
			 PreparedStatement pst= conn.prepareStatement(sql);
			 pst.setInt(1, id);
			 ResultSet rs = pst.executeQuery();
			 while(rs.next()) {
				 order_temp or =new order_temp();
				 or.setOrder_id(rs.getInt("order_id"));
					or.setSp_id(rs.getInt("sp_id"));
					or.setSu_id(rs.getInt("su_id"));
					or.setSp_name(rs.getString("sp_name"));
					or.setSu_name(rs.getString("su_name"));
					or.setType(rs.getString("type"));
					or.setSub(rs.getString("sub"));
					or.setComm(rs.getString("comments"));
				list.add(or);
			 }
			 
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

public static List<order_temp> get_con(int id){
	
	List<order_temp> list = new ArrayList<>();
	try {
		dbConnection db = new dbConnection();
		 Connection conn = db.getConnection();
		 String sql="select * from order_c where sp_id=?";
		 PreparedStatement pst= conn.prepareStatement(sql);
		 pst.setInt(1, id);
		 ResultSet rs = pst.executeQuery();
		 while(rs.next()) {
			 order_temp or =new order_temp();
			 or.setOrder_id(rs.getInt("order_id"));
				or.setSp_id(rs.getInt("sp_id"));
				or.setSu_id(rs.getInt("su_id"));
				or.setSp_name(rs.getString("sp_name"));
				or.setSu_name(rs.getString("su_name"));
				or.setType(rs.getString("type"));
				or.setSub(rs.getString("sub"));
				or.setComm(rs.getString("comments"));
			list.add(or);
		 }
		 
	}catch(Exception e) {
		e.printStackTrace();
	}
	return list;
}
public static int get_comorder1(int id) {
	int count=0;
	try {
	System.out.println(id);
	 dbConnection db = new dbConnection();
	 Connection conn = db.getConnection();
	 String sql="select * from order_f where sp_id=?";
	 PreparedStatement pst=conn.prepareStatement(sql);
	 pst.setInt(1, id);
	 ResultSet rs =pst.executeQuery();
	 while(rs.next()) {
		 count++;
	 }
}catch(Exception e) {
	e.printStackTrace();
}
	return count;
}

}

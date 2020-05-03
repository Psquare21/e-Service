package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.review;

public class reviews {

	
	public static List<review> get_reviews(int sp_id){
		List<review> list= new ArrayList<>();
		
		try {
		dbConnection db = new dbConnection();
		Connection conn= db.getConnection();
		String sql="select * from order_done where sp_id=?";
		PreparedStatement pst=conn.prepareStatement(sql);
		pst.setInt(1, sp_id);
		ResultSet rs= pst.executeQuery();
		while(rs.next()) {
			review r = new review();
			r.setOrder_id(rs.getInt("order_id"));
			r.setReview(rs.getString("su_review"));
			r.setSp_id(rs.getInt("sp_id"));
			list.add(r);
		}
		System.out.println(list);
	}catch(Exception e) {
		e.printStackTrace();
	}
		return list;
}
}
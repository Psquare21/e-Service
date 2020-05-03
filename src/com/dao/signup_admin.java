package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.admin;
import com.bean.signup;



public class signup_admin {

	
	
	public int checkUser(admin s) {
		 int flag=0;
	     try
	     {
	       String sql="select * from admin where name=? AND pass=?"; 
	       dbConnection db=new dbConnection();
	       Connection conn = db.getConnection();
	       
	       PreparedStatement pst=conn.prepareStatement(sql);
	       pst.setString(1, s.getName());
	       pst.setString(2, s.getPass());
	       java.sql.ResultSet rs= pst.executeQuery();
			
	       if(rs.first())
	       {
	    	   flag=1;
	    	 
	       }
	       else {
	    	   flag=0;
			   
	     	}
	
	     }catch(Exception e) {
	    	 e.printStackTrace();
	     }
	     return flag;
	     
	}
}

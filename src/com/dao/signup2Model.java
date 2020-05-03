package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.signup;
import com.bean.signup2;



public class signup2Model {

	public void adduser(signup2 sp)
	{
		try{
			dbConnection db=new dbConnection();
			Connection conn=db.getConnection();
			String sql="insert into signup2(fname,uname,email,pass,address,phon,city,type,sub)values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, sp.getName());
			pst.setString(2, sp.getUid());
			pst.setString(3, sp.getMail());
			pst.setString(4, sp.getPass());
			pst.setString(5, sp.getAdd());
			pst.setString(6, sp.getPhon());
			pst.setString(7, sp.getCity());
			pst.setString(8, sp.getType());
			pst.setString(9, sp.getSub_type());
			int i=pst.executeUpdate();
			if(i>0)
			{
				System.out.println("Data Entered successfully");
			}else
			{
				System.out.println("Fail");
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public int checkUser(signup s) {
		 int flag=0;
	     try
	     {
	       String sql="select * from signup where uname=? AND pass=?"; 
	       dbConnection db=new dbConnection();
	       Connection conn = db.getConnection();
	       
	       PreparedStatement pst=conn.prepareStatement(sql);
	       pst.setString(1, s.getUid());
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

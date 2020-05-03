package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbConnection {
	public Connection getConnection() throws Exception
	{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
			return conn;
}
}

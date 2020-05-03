<%@page import="com.bean.serviceproviderBean"%>
<%@page import="com.model.serviceproviderModel"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>

<div class="col-md-2">
<ul class="nav nav-pills nav-stacked main-menu">

<li class="nav-header">Main</li>

<li><a href="display.jsp"><i class="fa fa-user"></i>&nbsp;Requested service</a>
</li>

<li><a href="feedback.jsp"><i class="fa fa-book"></i>&nbsp;Feedback</a>
</li>

</ul>
</div>

<div class="container">

<h1 style="text-align:center">
    Profile Information
</h1>
<div class="col-md-3"></div>
<div class="col-md-6">
<br>
<%
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/e-service","root","parinda");
		String sql="select * from serviceprovider where id=?";
		PreparedStatement pst=conn.prepareStatement(sql);
		pst.setString(1, uname);
		ResultSet rs=pst.executeQuery();
		while(rs.next())
		{
		%>

<form method="post">
<table class="table table-hover">
<tr>
<td>User Name</td>
<td><%=rs.getString("id")%></td>
</tr>
<tr>
<td>Password</td>
<td><%=rs.getString("pass") %></td>
</tr>
<tr>
<td>Email ID</td>
<td><%=rs.getString("email")%></td>
</tr>
<tr>
<td>Phone</td>
<td><%=rs.getString("phon")%></td>
</tr>
<tr>
<td>Service Name</td>
<td><%=rs.getString("se_name")%></td>
</tr>    
<tr>


<%	
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();		
	}
%>
   
</table>
</form>
</div>
<div class="col-md-3"></div>

</div>
<br><br>

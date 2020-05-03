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

<%@ include file="header.jsp"  %>


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
    Edit Information
</h1>
<div class="col-md-3"></div>
<div class="col-md-6">

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


<form name="updateform" method="post" action="../updateSP">
    
<div class="form-group">
    <label>User Name</label>
    <input type="text" name="id" value="<%=rs.getString("id")%>" class="form-control" readonly>  
</div>

<div class="form-group">
    <label>Password</label>
    <input type="text" name="pass" value="<%=rs.getString("pass")%>" class="form-control" >  
</div>
   
<div class="form-group">
    <label>Email ID</label>
    <input type="email" name="email" value="<%=rs.getString("email")%>" class="form-control" id="exampleInputEmail1">
</div>


<div class="form-group">
    <label>Phone Number</label>
    <input type="text" class="form-control" value="<%=rs.getString("phon")%>" name="phon" maxlength="10">
</div>

<div class="form-group">
    <label>Service name</label>
    <input type="text" name="se_name" value="<%=rs.getString("se_name")%>" class="form-control" >  
</div>



<div class="form-group">
    <input class="btn btn-primary" type="submit" name="submit" value="Save">
</div>


<%	
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();		
	}
%>


</form>
</div></div>

}
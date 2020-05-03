<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bean.RegBean"%>
<%@page import="java.util.List"%>
<%@page import="com.model.RegModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<div class="col-md-2">
<ul class="nav nav-pills nav-stacked main-menu">

<li class="nav-header">Main</li>

<li><a href="display.jsp"><i class="fa fa-user"></i>&nbsp;Requested service</a>
</li>

<li class="active"><a href="feedback.jsp"><i class="fa fa-book"></i>&nbsp;Feedback</a>
</li>

</ul>
</div>
<br>

<div class="col-md-10">

<div class="row">
<div class="col-md-6"><h1 style="margin-top:0px">Your Feedback Msgs</h1></div>
   
   

<form method="post">
<table class="table table-hover">

<tr>
	
    <td style="background-color:#92bff1">User Name</td>
	<td style="background-color:#4b95e8">Email ID</td>
	<td style="background-color:#92bff1">Feedback</td>
	
	
</tr>
<%
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/e-service","root","parinda");
		String sql="select * from feedback where sp_name=?";
		PreparedStatement pst=conn.prepareStatement(sql);
		pst.setString(1, uname);
		ResultSet rs=pst.executeQuery();
		while(rs.next())
		{
		%>
			<tr>

				<td><%=rs.getString("name") %></td>
				<td><%=rs.getString("email") %></td>
				<td><%=rs.getString("feedbackmsg") %></td>
				
			</tr>
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
</div>
<%@page import="com.bean.businessSpBean"%>
<%@page import="com.model.BusinessSpModel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<div class="col-md-2">
<ul class="nav nav-pills nav-stacked main-menu">

<li class="nav-header">Main</li>

<li><a href="display.jsp"><i class="fa fa-user"></i>&nbsp;Total Registration</a>
</li>

<li><a href="bookDetail.jsp"><i class="fa fa-book"></i>&nbsp;Booked Services</a>
</li>

<li><a href="msg.jsp"><i class="fa fa-envelope"></i>&nbsp;Message</a>
</li>

<li class="nav-header">Manage Services</li>

<li><a href="health.jsp"><i class="fa fa-television"></i>&nbsp;Health and Services</a>
</li>

<li><a href="homecare.jsp"><i class="fa fa-car"></i>&nbsp;Home Care & design</a>
</li>

<li><a href="beauty.jsp"><i class="fa fa-paint-brush"></i>&nbsp;Beauty</a>
</li>

<li><a href="repair.jsp"><i class="fa fa-wrench"></i>&nbsp;Repair and maintenance</a>
</li>

<li><a href="events.jsp"><i class="fa fa-laptop"></i>&nbsp;Events</a>
</li>

<li><a href="business.jsp"><i class="fa fa-plug"></i>&nbsp;Business services</a>
</li>

<li class="nav-header">Add Service</li>

<li><a href="healthIns.jsp"><i class="fa fa-television"></i>&nbsp;Health and Services</a>
</li>

<li><a href="homecareIns.jsp"><i class="fa fa-car"></i>&nbsp;Home Care & design</a>
</li>

<li><a href="beautyIns.jsp"><i class="fa fa-paint-brush"></i>&nbsp;Beauty</a>
</li>

<li><a href="repairIns.jsp"><i class="fa fa-wrench"></i>&nbsp;Repair and maintenance</a>
</li>

<li><a href="eventIns.jsp"><i class="fa fa-laptop"></i>&nbsp;Events</a>
</li>

<li><a href="businessIns.jsp"><i class="fa fa-plug"></i>&nbsp;Business services</a>
</li>

<li class="nav-header">Manage Service Provider</li>

<li><a href="healthSP.jsp"><i class="fa fa-television"></i>&nbsp;Health and Services</a>
</li>

<li><a href="homecareSP.jsp"><i class="fa fa-car"></i>&nbsp;Home Care & design</a>
</li>

<li><a href="beautySP.jsp"><i class="fa fa-paint-brush"></i>&nbsp;Beauty</a>
</li>

<li><a href="repairSP.jsp"><i class="fa fa-wrench"></i>&nbsp;Repair and maintenance</a>
</li>

<li><a href="eventSP.jsp"><i class="fa fa-laptop"></i>&nbsp;Events</a>
</li>

<li class="active"><a href="businessSP.jsp"><i class="fa fa-plug"></i>&nbsp;Business services</a>
</li>


</ul>
</div>
<br>

<div class="col-md-9">

<div class="row">
<div class="col-md-6"><h1 style="margin-top:0px">Business Services</h1></div>
    

<form method="post" name="app">
<table class="table table-hover">

<tr>
	<th style="background-color:#4b95e8" class="col-md-1">ID</th>
    <th style="background-color:#92bff1">Service Name</th>
    <th style="background-color:#4b95e8">Service provider Name</th>
    <th style="background-color:#92bff1">Email</th>
    <th style="background-color:#4b95e8">Phone</th>
    <th style="background-color:#92bff1">Status</th>
	<th style="background-color:#4b95e8;text-align:center" class="col-md-3">Action</th>    

</tr>
<%
	BusinessSpModel dao=new BusinessSpModel();
   		List<businessSpBean> list=dao.getData();
%>
<tr>

<%
	for(businessSpBean obj:list)
	{
%>
<td><%=obj.getSe_id()%></td>
<td><%=obj.getSe_name()%></td>
<td><%=obj.getId()%></td>
<td><%=obj.getEmail()%></td>
<td><%=obj.getPhon()%></td>

<td style="text-align:center">

<%
	if (Integer.parseInt(obj.getSe_id())<1)
	{
%>

Inactivate

<%
	}
		else{
%>

Activated
<% } %>
</td>


<td style="text-align:center"> 
<a href="../delBusinessSp?id=<%=obj.getSe_id()%>&name=<%=obj.getId()%>" class="btn btn-sm btn-danger">
<i class="glyphicon glyphicon-trash icon-white"></i>
Delete
</a>

<%
	if (Integer.parseInt(obj.getSe_id())<1)
	{
%>

<a class="btn btn-primary btn-sm" href="businessSpEdit.jsp?id=<%=obj.getSe_id()%>&name=<%=obj.getId()%>">
<i class="glyphicon glyphicon-edit icon-white"></i>
Edit
</a>
<% } %>
</td>
</tr>
<%} %>
    
</table>
</form>
</div>
</div>

<%@ include file="footer.html" %>

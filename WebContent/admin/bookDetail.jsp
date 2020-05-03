<%@page import="com.bean.AdminBookingBean"%>
<%@page import="com.model.AdminBookingModel"%>
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

<li><a href="display.jsp"><i class="fa fa-user"></i>&nbsp;Total Registration</a>
</li>

<li class="active"><a href="bookDetail.jsp"><i class="fa fa-book"></i>&nbsp;Booked Services</a>
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

<li><a href="businessSP.jsp"><i class="fa fa-plug"></i>&nbsp;Business services</a>
</li>


</ul>
</div>
<br>

<div class="col-md-10">

<div class="row">
<div class="col-md-6"><h1 style="margin-top:0px">#Booked Services</h1></div>
   
   <%
   		AdminBookingModel dao=new AdminBookingModel();
   		List<AdminBookingBean> list=dao.getData();
   %>
<form method="post">
<table class="table table-hover">
<tr>
	<th style="background-color:#4b95e8;">Service Name</th>
    <th style="background-color:#92bff1">Full Name</th>
    <th style="background-color:#4b95e8" class="col-md-1">Service Date</th>
	<th style="background-color:#92bff1" class="col-md-1">Service Time</th>
	<th style="background-color:#4b95e8" class="col-md-2">Address</th>
    <th style="background-color:#92bff1" >Email</th>
	<th style="background-color:#4b95e8">Phone</th>
    <th style="background-color:#92bff1">Requirements</th>

</tr>
<%
	for(AdminBookingBean obj:list)
	{
%>
<tr>

<td><%=obj.getSer() %></td>
<td><%=obj.getName1() %></td>
<td><%=obj.getDate1() %></td>
<td><%=obj.getTime1() %></td>
<td><%=obj.getAdd1() %></td>
<td><%=obj.getEmail() %></td>
<td><%=obj.getPhon() %></td>
<td><%=obj.getReq() %></td>

</tr>
<%} %>
  
</table>
</form>

</div>
</div>
<br>
<%@ include file="footer.html" %>
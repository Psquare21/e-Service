<%@page import="java.util.List"%>
<%@page import="com.model.BeautyModel"%>
<%@page import="com.bean.BeautyBean"%>
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

<li class="active"><a href="beauty.jsp"><i class="fa fa-paint-brush"></i>&nbsp;Beauty</a>
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

<div class="col-md-9">
<div class="col-md-2"></div>
<div class="col-md-8">
<h3>Edit Service</h3>
<%
String id=(String)request.getParameter("id");
String se_name=(String)request.getParameter("se_name");
String se_sub_name=(String)request.getParameter("se_sub_name");
System.out.println(id);

%>
<form method="post" name="frm" action="../beautyUpdate">

<div class="form-group">
    <label for="exampleInputName2">Service Name</label>
    <input type="text" name="se_name" class="form-control" placeholder="Name" value="<%=se_name%>" readonly>  
</div>

<div class="form-group">
    <label for="exampleInputName2">Sub Service Name</label>
    <input type="text" name="se_sub_name" class="form-control" placeholder="Name" value="<%=se_sub_name%>" required>  
</div>

<input type="hidden" name="id" value="<%=id%>">

<div class="form-group">
<input type="submit" name="submit"  value="Edit Service" class="btn btn-primary">
</div>

</form>
</div>
<div class="col-md-2"></div>
    
</div>
<%@ include file="footer.html" %>

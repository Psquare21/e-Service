<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="js/charisma.js"></script>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>E-Service</title>

<link href="bootstrap/css/bootstrap.css" rel="stylesheet"/>
<link href="css/charisma-app.css" rel="stylesheet"/>
<link href="animate.css" rel="stylesheet"/>
<link href="font-awesome/css/font-awesome.css" rel="stylesheet"/>

</head>
<body>
<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
<%!String uname; %>
<%
	if(session!=null)
	{
	if(session.getAttribute("abcde")!=null)
		{
			uname=session.getAttribute("abcde").toString();
		
%>
<nav class="navbar navbar-inverse navbar-static-top"  style="background-color: #193d5b;margin:0px;color: black;" role="navigation">
<div class="container">
<div class="row">
<div class="col-lg-4">
    <div class="navbar-header">
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-ese-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
    <span style="color:white; font-size:25pt;">E-Service</span>
    </div>
</div>
 <div class="col-lg-2"></div>
  <div class="col-lg-6">
    <div class="collapse navbar-collapse navbar-right" id="bs-ese-navbar-collapse-1">
	<ul class="nav navbar-nav">
        <li class="dropdown">
	    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
	   	<i class="fa fa-user"></i>&nbsp;
	   	<label style="color: white;"><%=uname %></label>
	   	<span class="caret"></span>
	    </a>
	    <ul class="dropdown-menu">
	    <li><a href="userinfo.php"><i class="fa fa-male"></i>&nbsp;&nbsp; Your Account</a></li>
	    <li><a href="pwd.php"><i class="fa fa-key"></i>&nbsp;&nbsp;Change Password</a></li>
	    <li><a href="useredit.php"><i class="fa fa-cog"></i>&nbsp; Edit Account</a></li>
	    <li class="divider"></li>
	    <li><a href="logout.jsp"><i class="fa fa-sign-out"></i>&nbsp; Logout</a>
	    </ul>
	 	</li>
	  	</ul>
	  	</div>

</div>

</div>
</div>
</div>
</nav>

    		    		
<%
		}
		else
		{
			response.sendRedirect("index.jsp");
		}
	}
	else
	{
		response.sendRedirect("index.jsp");
	}
%>
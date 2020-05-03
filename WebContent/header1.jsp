<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Title -->
        <title>E-Service</title>
        <!-- Meta -->
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <!-- Favicon -->
        <link href="favicon.ico" rel="shortcut icon">
        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.css" rel="stylesheet">
        <!-- Template CSS -->
        <link rel="stylesheet" href="assets/css/animate.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/nexus.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/responsive.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/custom.css" rel="stylesheet">
        <!-- Google Fonts-->
        <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300" rel="stylesheet" type="text/css">



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
	if(session.getAttribute("abc")!=null)
		{
			uname=session.getAttribute("abc").toString();
%>
<div id="body-bg">
            <!-- Phone/Email -->
            <!-- End Phone/Email -->
            <!-- Header -->
            
            <div id="pre-header" class="background-gray-lighter">
            		<div class="container no-padding">
            			<div class="row hidden-xs">
            				<div class="col-sm-6 padding-vert-5">
            					<strong><h2>E-Service</h2></strong>
            				</div>
            				<div class="col-sm-6 text-right padding-vert-5">
            					<strong>Email:</strong>&nbsp;info@eservice.com
            				</div>
            				
            			</div>
            		</div>
            </div>
            
          <!--   <div id="header"> 
                <div class="container">
                    <div class="row"> -->
                        <!-- Logo -->
                      <!--   <div class="logo">
                            <a href="index.html" title="">
                                <img src="assets/img/logo.png" alt="Logo" />
                            </a>
                        </div>    -->
                        <!-- End Logo -->
                  <!--  </div>
                </div>
            </div>  -->
            <!-- End Header -->
            <!-- Top Menu -->
            <div id="hornav" class="bottom-border-shadow">
                <div class="container no-padding border-bottom">
                    <div class="row">
                        <div class="col-md-8 no-padding">
                            <div class="visible-lg">
                                <ul id="hornavmenu" class="nav navbar-nav">
                                    <li>
                                        <a href="index1.jsp" class="fa-home active">Home&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                                    </li>
                                    <li>
                                        <a href="all_services1.jsp">
                                        <span class="fa-gears ">All Services&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a>
                                        
                                    </li>
                                    <li>
                                        <a href="how_it_works1.jsp">
                                        <span class="fa-copy ">How It Works&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a>
                                        
                                    </li>
                                    <li>
                                        <a href="about_us1.jsp">
                                        <span class="fa-th ">About Us&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a>
                                    </li>
                                    <li>
                                        <a href="contact1.jsp" class="fa-comment ">Contact&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                                    </li>
                                   


									<li>
	    							<a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
	   	<i class="fa fa-user"></i>&nbsp;
	   	<label style="color: white;"><%=uname %></label>
	   	<span class="caret"></span>
	    </a>
	    <ul class="dropdown-menu">
	    <li><a href="userinfo.jsp"><i class="fa fa-male"></i>&nbsp;&nbsp; Your Account</a></li>
	    <li><a href="editUser.jsp"><i class="fa fa-cog"></i>&nbsp; Edit Account</a></li>
	    <li><a href="cancelBooking.jsp"><i class="fa fa-cog"></i>&nbsp; Booked services</a>
	    <li class="divider"></li>
	    <li><a href="logout.jsp"><i class="fa fa-sign-out"></i>&nbsp;Logout</a>
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
     
</body>
</html>

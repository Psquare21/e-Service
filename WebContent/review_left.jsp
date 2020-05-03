<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.order_book"%>
<%@page import="com.bean.order_temp"%>
<%@page import="com.dao.sp_select"%>
<%@page import="com.bean.sp_verify"%>
<%@page import="com.dao.sp_showdao"%>
<%@page import="com.bean.signup2"%>
<%@page import="java.util.List"%>
<%@page import="com.bean.admin"%>
<%@page import="com.bean.signup"%>
<html lang="en">
    <!--<![endif]-->
    <head>
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
    
    <%!signup s= new signup(); %>
    <% s=(signup)session.getAttribute("user"); %>
  <%! List<order_temp> list = new ArrayList<>();  %>
  <% 
  list = order_book.get_revieworder(s.getId());  %> 
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
            					<form name="form" method="post" action="myorders.jsp" style="margin-right:30px">
            					<input type="submit" id="home" name="action" value="Home" class="btn" style="color:black">
            					</form>
            				</div>
            				
            			</div>
            		</div>
            </div>
                        <!-- End Header -->
            <!-- Top Menu -->
            
<!-- end header -->
<br>

<h1 style="text-align:center">
    Service Provider Verification
</h1>

 
   <table style=" margin:30px">
   <tr >
   	<th style="padding:10px"><center>Order</center></th>
   	<th><center>&nbsp &nbsp Company Name &nbsp &nbsp</center></th>
   	<th><center>&nbsp &nbsp Service Type &nbsp &nbsp</center></th>
   	
   </tr>
   <%
    	for(order_temp or:list){
    		
   %>
   <tr>
   	<td style="padding:10px"><center><%=or.getOrder_id() %></center></td>
   	<td><center><%=or.getSp_name() %></center></td>
   	<td><center><%=or.getType() %></center></td>
   	
   	<td>
         	<form name="verify" method="post" action="review_left">
				<input type="hidden" name="id" value="<%=or.getOrder_id()%>">
				<input type="submit" name="action" value="Give Review">
				<input type="submit" name="action" value="Details">
			</form>
   	</td>
   	</tr>
   	<% }
   	%>
   	</table>
   	
            <!-- === BEGIN FOOTER === -->
            <div id="base">
                <div class="container bottom-border padding-vert-30">
                    <div class="row">
                        <!-- Disclaimer -->
                       <!--   <div class="col-md-4">
                            <h3 class="class margin-bottom-10">Disclaimer</h3>
                            <p>All stock images on this template demo are for presentation purposes only, intended to represent a live site and are not included with the template or in any of the Joomla51 club membership plans.</p>
                            <p>Most of the images used here are available from
                                <a href="http://www.shutterstock.com/" target="_blank">shutterstock.com</a>. Links are provided if you wish to purchase them from their copyright owners.</p>
                        </div>   -->
                        <!-- End Disclaimer -->
                        <!-- Contact Details -->
                        <div class="col-md-4 margin-bottom-20">
                            <h3 class="margin-bottom-10">Contact Details</h3>
                             <p>
                                <span class="fa-phone">phone:</span> 8487915151
                                <br>
                                <span class="fa-envelope">Email:</span> e-Service@gmail.com
                                <a href="e-service@gmail.com"></a>
                                <br>
                                <span class="fa-link">Website:</span>
                                <a href="http://www.example.com">www.eService.com</a>
                            </p>
                             
                        </div>
                       
                        <!-- End Contact Details -->
                        <!-- Sample Menu -->
                        <div class="col-md-4 margin-bottom-20">
                            <h3 class="margin-bottom-10">Address</h3>
                             L.D.R.P. Institute of Technology and Research
                                <br>
                                Sector-15, Gandhinagar
                                <br>
                                Gujarat-382424                           
                                
                               <div class="clearfix"></div>
                        </div>
                        <!-- End Sample Menu -->
                    </div>
                </div>
            </div>
            <!-- Footer -->
            <div id="footer" class="background-grey">
                <div class="container">
                    <div class="row">
                        <!-- Footer Menu -->
                        <!-- <div id="footermenu" class="col-md-8">
                            <ul class="list-unstyled list-inline">
                                <li>
                                    <a href="#" target="_blank">Sample Link</a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">Sample Link</a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">Sample Link</a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">Sample Link</a>
                                </li>
                            </ul>
                        </div>  -->
                        <!-- End Footer Menu -->
                        <!-- Copyright -->
                        <div id="copyright" class="col-md-4">
                            <p class="pull-right">Copyright &copy; 2017 <a href="">eService</a> | All Rights Reserved<br></p>
                        </div>
                        <!-- End Copyright -->
                    </div>
                </div>
            </div>
            <!-- End Footer -->
            <!-- JS -->
            <script type="text/javascript" src="assets/js/jquery.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="assets/js/bootstrap.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="assets/js/scripts.js"></script>
            <!-- Isotope - Portfolio Sorting -->
            <script type="text/javascript" src="assets/js/jquery.isotope.js" type="text/javascript"></script>
            <!-- Mobile Menu - Slicknav -->
            <script type="text/javascript" src="assets/js/jquery.slicknav.js" type="text/javascript"></script>
            <!-- Animate on Scroll-->
            <script type="text/javascript" src="assets/js/jquery.visible.js" charset="utf-8"></script>
            <!-- Sticky Div -->
            <script type="text/javascript" src="assets/js/jquery.sticky.js" charset="utf-8"></script>
            <!-- Slimbox2-->
            <script type="text/javascript" src="assets/js/slimbox2.js" charset="utf-8"></script>
            <!-- Modernizr -->
            <script src="assets/js/modernizr.custom.js" type="text/javascript"></script>
            <!-- End JS -->
            
            
            </body>
            </html>
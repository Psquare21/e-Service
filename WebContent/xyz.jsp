<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<%@page import="com.dao.order_book"%>
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
    	
    <% if(session == null){
    	System.out.println("123");
    	response.sendRedirect("Login.jsp");
    	System.out.println("123");
    }else{
    %>
    <%! signup s=new signup(); %>
    <%
	s=(signup)session.getAttribute("user");

%>
    <%!String uname; %>
<%
	if(session!=null)
	{
	if(session.getAttribute("abc")!=null)
		{
			uname=session.getAttribute("abc").toString();
		}
	}
%>
<% int count=order_book.get_bookorder(s.getId());  %>
<% int count1=order_book.get_comorder(s.getId()); %>
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
            				
            					<form name="form" method="post" action="update" style="margin-right:30px">
            					<input type="submit" id="home" name="action" value="Home" class="btn" style="color:black">
            					<input type="submit" id="but" name="action" value="Update your Profile" class="btn" style="color:black">
            					<input type="submit" id="but1" name="action" value="Logout" class="btn" style="color:black">
            					
            					</form>
            				</div>
            				
            			</div>
            		</div>
            </div>
                        <!-- End Header -->
            <!-- Top Menu -->
            
<!-- end header -->
<br>
<br>
<div>
        <div id="about-us">
        
                    <h2 class="wow fadeInDown" data-wow-duration="700ms" data-wow-delay="300ms">Welcome User, <%=s.getUid() %></h2>
                    <hr class="title-border">
                                    </div>  
                <br>
<input type="text" name="uname" id="uname" value="<%=s.getUid() %>" hidden>

                <div class="row about-content">
                <div class="col-sm-4 wow zoomIn text-center" data-wow-duration="700ms" data-wow-delay="300ms">
                    </div>
                <div class="col-sm-4 wow zoomIn text-center" data-wow-duration="700ms" data-wow-delay="400ms">
                     </div>
                <div class="col-sm-4 wow zoomIn text-center" data-wow-duration="700ms" data-wow-delay="500ms">                  
                    </div>                      
            </div><!--/about-content--> 
     </div> 
    </div>
   </div>
  </div>
   <h3><a href="book.jsp"><button style="width:240px">Book a service</button></a></h3>
   <br>
    <h3> <a href="order_left.jsp"><button style="width:240px">Review your booked orders</button ></a>&nbsp You have <%=count %> booked orders.</h3>
    <br>
    <h3><a href="review_left.jsp"><button style="width:240px">View your previous orders</button></a>&nbsp You have <%=count1 %> previously booked orders.</h3>
    
    
    
    <br><br>
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
            
            <%} %>
            </body>
            </html>
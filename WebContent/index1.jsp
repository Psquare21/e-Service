<%@page import="com.bean.signup"%>
<%@page import="com.dao.signupModel"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="header1.jsp" %>

<%!signup st=new signup(); %>
<%
	st=(signup)session.getAttribute("user");

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Title -->
        <title>Habitat - A Professional Bootstrap Template</title>
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
<div id="body-bg">
<!-- === BEGIN CONTENT === -->
            <div id="slideshow" class="bottom-border-shadow">
                <div class="container no-padding background-white bottom-border">
                    <div class="row">
                        <!-- Carousel Slideshow -->
                        <div id="carousel-example" class="carousel slide" data-ride="carousel">
                        
                        	<div class="">
                                
                                    <img src="assets/img/slideshow/rsz_index.jpg"   >
                                
                 			</div>           
                        	
                        
                        
                            <!-- Carousel Indicators -->
                 <!--            <ol class="carousel-indicators">
                                <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example" data-slide-to="1"></li>
                                <li data-target="#carousel-example" data-slide-to="2"></li>
                            </ol>				-->
                            <div class="clearfix"></div>
                            <!-- End Carousel Indicators -->
                            <!-- Carousel Images -->
                 <!--             <div class="carousel-inner">
                                <div class="item active">
                                    <img src="assets/img/slideshow/index.jpg">
                                </div>
                                <div class="item">
                                    <img src="assets/img/slideshow/index2.jpg">
                                </div>
                                <div class="item">
                                    <img src="assets/img/slideshow/index3.jpg">
                                </div>											-->
                               <!-- <div class="item">
                                    <img src="assets/img/slideshow/slide4.jpg">
                                </div>-->
                            </div>					
                            <!-- End Carousel Images -->
                            <!-- Carousel Controls -->
                       <!--       <a class="left carousel-control" href="#carousel-example" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>											-->
                            <!-- End Carousel Controls -->
                        </div>
                        <!-- End Carousel Slideshow -->
                    </div>
                </div>
            </div>
         <!--   <div id="icons" class="bottom-border-shadow">
                <div class="container background-grey bottom-border">
                    <div class="row padding-vert-60">-->
                        <!-- Icons -->
                     <!--   <div class="col-md-4 text-center">
                            <i class="fa-cogs fa-4x color-primary animate fadeIn"></i>
                            <h2 class="padding-top-10 animate fadeIn">Velit esse molestie</h2>
                            <p class="animate fadeIn">Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer.</p>
                        </div>
                        <div class="col-md-4 text-center">
                            <i class="fa-cloud-download fa-4x color-primary animate fadeIn"></i>
                            <h2 class="padding-top-10 animate fadeIn">Quam nunc putamus</h2>
                            <p class="animate fadeIn">Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer.</p>
                        </div>
                        <div class="col-md-4 text-center">
                            <i class="fa-bar-chart fa-4x color-primary animate fadeIn"></i>
                            <h2 class="padding-top-10 animate fadeIn">Placerat facer possim</h2>
                            <p class="animate fadeIn">Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer.</p>
                        </div>-->
                        <!-- End Icons -->
                  <!--  </div>
                </div>
            </div> -->
            <div id="content" class="bottom-border-shadow">
                <div class="container background-white bottom-border">
                <br>
                 <h2 class="text-center">Trending Services</h2>
                    <div class="row margin-vert-30">
                        <!-- Main Text -->
                      

                           <div>
                            <a href="yoga.jsp?id=39">
                            <img src="assets/img/frontpage/yoga.PNG" alter="yoga" height="150" width="150" hspace="20"></a>
                            <a href="plumber.jsp?id=18"><img src="assets/img/frontpage/plumberr.PNG" alter="fitness" height="150" width="150" hspace="20"></a>
                            
                            <a href="physio.jsp?id=2"><img src="assets/img/frontpage/physio.PNG" alter="oo" height="150" width="150" hspace="20"></a>
                            <a href="pest.jsp?id=7"><img src="assets/img/frontpage/pest.PNG" alter="oo" height="150" width="150" hspace="20"></a>
                            <a href="packers.jsp?id=40"><img src="assets/img/frontpage/packers.png" alter="oo" height="150" width="150" hspace="20"></a></div>
                            <br>
                            <div>
                            <a href="fitness.jsp?id=3"><img src="assets/img/frontpage/fitnesss.PNG" alter="oo" height="150" width="150" hspace="20"></a>
                            <a href="dieticians.jsp?id=1"><img src="assets/img/frontpage/diet.PNG" alter="oo" height="150" width="150" hspace="20"></a>
                            <a href="carpenter.jsp?id=6"><img src="assets/img/frontpage/carpen.PNG" alter="oo" height="150" width="150" hspace="20"></a>
                            <a href="bridal.jsp?id=14"><img src="assets/img/frontpage/bridal.PNG" alter="oo" height="150" width="150" hspace="20"></a>
                            <a href="birthday.jsp?id=27"><img src="assets/img/frontpage/birthday.PNG" alter="oo" height="150" width="150" hspace="20"></div>
                            
                           
                        </div>
                        
                        <!--    <h2>Welcome to Habitat</h2>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummynibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit
                                lobortis nisl ut aliquip ex ea commodo consequat.</p>
                            <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit
                                augue duis dolore te feugait nulla facilisi. Cras non sem sem, at eleifend mi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Curabitur eget nisl
                                a risus.</p>
                        </div>-->
                        <!-- End Main Text -->
                     <!--   <div class="col-md-6">-->
                            <!--<h3 class="padding-vert-10">Key Features</h3>
                            <p>Duis sit amet orci et lectus dictum auctor a nec enim. Donec suscipit fringilla elementum. Suspendisse nec justo ut felis ornare tincidunt vitae et lectus.</p>
                            <ul class="tick animate fadeInRight">
                                <li>Responsive Design</li>
                                <li>Built with LESS</li>
                                <li>Font Choosers</li>
                                <li>Replaceable Background Image</li>
                                <li>Custom Module Widths</li>
                                <li>All Module Extensions Included</li>
                            </ul>-->
                        </div>
                    </div>
                </div>
            </div>
            <!-- Portfolio -->
            <div id="portfolio" class="bottom-border-shadow">
                <div class="container bottom-border">
                <br>
                <h2 class="text-center">Browsed By Categories</h2>
                    <div class="row padding-top-40">
                        <ul class="portfolio-group">
                            <!-- Portfolio Item -->
                            <li class="portfolio-item col-sm-4 col-xs-6 margin-bottom-40">
                            <a href="health.jsp">
                                    <figure class="animate fadeInLeft">

                                        <img alt="image1" src="assets/img/frontpage/health_and_wellness.jpg">
                                        <figcaption>
                                            <h3>Health & Services</h3>
                                            <span> 4 Services</span>
                                        </figcaption>
                                    </figure>
                            </a>
                            </li>
                            <!-- //Portfolio Item// -->
                            <!-- Portfolio Item -->
                            <li class="portfolio-item col-sm-4 col-xs-6 margin-bottom-40">
                                <a href="home_care.jsp">
                                    <figure class="animate fadeIn">
                                        <img alt="image2" src="assets/img/frontpage/home_care.jpg">
                                        <figcaption>
                                            <h3>Home Care & Design</h3>
                                            <span> 10 Services</span>
                                        </figcaption>
                                    </figure>
                                </a>
                            </li>
                            <!-- //Portfolio Item// -->
                            <!-- Portfolio Item -->
                            <li class="portfolio-item col-sm-4 col-xs-6 margin-bottom-40">
                                <a href="beauty.jsp">
                                    <figure class="animate fadeInRight">
                                        <img alt="image3" src="assets/img/frontpage/beauty.jpg">
                                        <figcaption>
                                            <h3>Beauty</h3>
                                            <span>2 Services</span>
                                        </figcaption>
                                    </figure>
                                </a>
                            </li>
                            <!-- //Portfolio Item// -->
                            <!-- Portfolio Item -->
                            <li class="portfolio-item col-sm-4 col-xs-6 margin-bottom-40">
                                <a href="Repair.jsp">
                                    <figure class="animate fadeInLeft">
                                        <img alt="image4" src="assets/img/frontpage/repair_and_maintenance.jpg">
                                        <figcaption>
                                            <h3>Repair & maintenance</h3>
                                            <span>12 Services</span>
                                        </figcaption>
                                    </figure>
                                </a>
                            </li>
                            <!-- //Portfolio Item// -->
                            <!-- Portfolio Item -->
                            <li class="portfolio-item col-sm-4 col-xs-6 margin-bottom-40">
                                <a href="events.jsp">
                                    <figure class="animate fadeIn">
                                        <img alt="image5" src="assets/img/frontpage/wedding_events.jpg">
                                        <figcaption>
                                            <h3>Events</h3>
                                            <span>9 Services</span>
                                        </figcaption>
                                    </figure>
                                </a>
                            </li>
                            <!-- //Portfolio Item// -->
                            <!-- Portfolio Item -->
                            <li class="portfolio-item col-sm-4 col-xs-6 margin-bottom-40">
                                <a href="business.jsp">
                                    <figure class="animate fadeInRight">
                                        <img alt="image6" src="assets/img/frontpage/business_services.jpg">
                                        <figcaption>
                                            <h3>Buisness Services</h3>
                                            <span> 6 Services</span>
                                        </figcaption>
                                    </figure>
                                </a>
                            </li>
                            <!-- //Portfolio Item// -->
                        </ul>
                    </div>
                </div>
            </div>
            <!-- End Portfolio -->
            <!-- === END CONTENT === -->
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
                             L.D.R.P Institute of Technology and Research
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

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
        <link rel="stylesheet" type="text/css" href="assets/css/login.css" />
        
        
        <!-- Google Fonts-->
        <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300" rel="stylesheet" type="text/css">


</head>
<body>
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
            
            <!-- End Header -->
            <!-- Top Menu -->
            
           
<center>
<form method="post"  name="login" action="login_ad">
    <div class="login">

            <div class="lgn_left"><h1>ADMIN</h1><p>Please enter your Username and

                password</p>

            </div>

        <div class="lgn_right">

        <input class="field" type="text" name="uid" size="70"  placeholder="User Name" required> 

        <input class="field" type="password" name="pass" size="70" placeholder="Password" required> 

        <center><button type="submit"  id="myButton" name="login" value="login" class="btn">Login</button></center>
<br>

   
        
     

        </div>
    </div>



</form>

</center>
<%@ include file="footer.html" %>

</body>

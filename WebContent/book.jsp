<%@page import="com.bean.signup"%>
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
       
        
       
      <!--   <script src="validation/jqueryValidation.js"></script>
		<script src="validation/UsernameValidation.js"></script>
		<script src="validation/EmailValidation.js"></script>  -->
        
        
        <!-- Google Fonts-->
        <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300" rel="stylesheet" type="text/css">


</head>
<script>
var flag_fname=0;
var flag_email=0;
var flag_num=0;
var flag_username=0;
function checkfname(){
	document.getElementById("but").disabled = true;
	var name= document.form.name.value;
	var check= /^[a-zA-Z]+$/;
	if(name.match(check)){
		flag_fname=1;
		document.getElementById("f1").innerHTML="";
		checkbutton();
		return true;
		
	}
	else{
		flag_fname=-1;
		document.getElementById("f1").innerHTML="Please enter valid Name";
		//document.form.name.focus();
		return false;
	}
	
}

function checknum(){
	var num=document.form.phon;
	var check= /^\d{10}$/;
	if(num.value.match(check)){
		flag_num=1;
		document.getElementById("n1").innerHTML="";
		checkbutton();
		return true;
		
	}
	else{
		flag_num=-1;
		document.getElementById("n1").innerHTML="Please enter valid Number";
	}
}
function checkusername(){

	var str="Username Already Used";
 	var request=new XMLHttpRequest();
	var name=document.form.uid.value;  
	var url="ajaxuser.jsp?val="+name;  
  	try
  	{  
		request.onreadystatechange=function()
		{  
			if(request.readyState==4)
			{  
				var val=request.responseText;  
				document.getElementById("raj").innerHTML=val; 
			}  
		}  
		request.open("GET",url,true);  
		request.send();

	}
  	catch(e)
  	{
  		alert("Unable to connect to server");
  	}
}
function validemail(){
	
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var input= document.form.mail;
	if(input.value.match(mailformat))
		{
		document.getElementById("raj1").innerHTML="";
		return true;
		}
	else{
		document.getElementById("raj1").innerHTML="Please enter valid email";
	}
	checkemail();
}
function checkemail(){
	var request=new XMLHttpRequest();
	var name=document.form.mail.value;  
	var url="ajaxemail.jsp?val="+name;
	var str="Email Id Already Used"
  	try
  	{  
		request.onreadystatechange=function()
		{  
			if(request.readyState==4)
			{  
				var val=request.responseText;  
				document.getElementById("raj2").innerHTML=val;	
				
			}  
		}  
		request.open("GET",url,true);  
		request.send();  
	}
  	catch(e)
  	{
  		alert("Unable to connect to server");
  	}   	
  	
  	}

function checkbutton(){
	var val=document.getElementById("raj1");
	var mat="";
	if(val == mat){
		document.getElementById("but").disabled = false;
	}
	else{
		document.getElementById("but").disabled = true;
	}
	if(flag_fname==1 && flag_num==1){
		document.getElementById("but").disabled = false;	
	}
	else{
		document.getElementById("but").disabled = true;
	}
}

function change(s1,s2){
	var s1 = document.getElementById(s1);
	var s2= document.getElementById(s2);
	s2.innerHTML="";
	if(s1.value=="health"){
		var optionArray = ["|","dietician|Dietician","physio|Physiotherapist","fitness|Fitness"];
	}else if(s1.value=="homecare"){
		var optionArray = ["|","interior|Interior Designer","elec|Electrician","carpenter|Carpenter","pest|Pest Control","deep|Home Deep Cleaning","bathroom|Bathroom Cleaning","kitchen|Kitchen Deep Cleaning","carpet|Carpet Cleaning","sofa|Sofa CLeaning","dry|Dry Cleaning"];
	}else if(s1.value=="beauty"){
		var optionArray = ["|","bridal|Bridal Makeup Artist","makeup|Makeup Artist"];
	}else if(s1.value=="repair"){
		var optionArray = ["|","tank|Water Tank Measuremt","mobile|Mobile Repair","elec|Electrician","plumber|Plumber","carpenter|Carpenter","ac|Ac Service & Repair","laptop|Laptop Repair","fridge|Refridgerator Repair","washing|Washing Machine Repair","purifier|Water Purifier Repair","heater|Water Heater Purifier"];
	}else if(s1.value=="event"){
		var optionArray = ["|","photo|Wedding Photographer","birthday|Birthday Party Planner","baby|Baby Photographer","wedding|wedding Planner","pre|Pre-Wedding Photoshoot","caterer|Wedding Caterer"];
	}else if(s1.value == "business"){
		var optionArray = ["web|Web Designer","income|Income Tax Filing","cctv|CCTV Security","company|Company Registration","ca|CA for business","currency|Foreign Currency Exchange"];
	}
	for(var option in optionArray){
		 var pair= optionArray[option].split("|");
		 var newOption = document.createElement("option");
		 newOption.value = pair[0];
		 newOption.innerHTML = pair[1];
		 s2.options.add(newOption);
	}
	}
	

</script>
<body>

 <%! signup s=new signup(); %>
    <%
	s=(signup)session.getAttribute("user");

%>
    <%!String uname; %>
<%
	uname=(String)request.getAttribute("uname");
 System.out.println(uname);
%>
<% 
HttpSession session1 =request.getSession(false);

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
            <!-- End Header -->
            <!-- Top Menu -->
            <div id="hornav" class="bottom-border-shadow">
                <div class="container no-padding border-bottom">
                    <div class="row">
                        <div class="col-md-8 no-padding">
                            <div class="visible-lg">
                                <form name="form" method="post" action="update" style="margin-left:900px; margin-top:15px">
            					<input type="submit" id="home" name="action" value="Home" class="btn" style="color:black">
            					</form>
                                 </div>
                        </div>
                        </div>
                </div>
            </div>

<div class="container">
<h1 style="text-align:center">
    Book the Service
</h1>
<div class="col-md-3"></div>
<div class="col-md-6">

<form method="post" id="pnm" name="form" action="book">
<input type="text" name="id" value="<%=s.getId()%>" hidden>

<label for="exampleInputName2">Select your service type:</label><br>
<select id="select1" name="select1" onchange="change(this.id,'select2')" required>
<option value=""></option>
<option value="health">Health & Services</option>
<option value="homecare">Home Care & Design</option>
<option value="beauty">Beauty</option>
<option value="repair">Repair & Maintenance</option>
<option value="event">Events</option>
<option value="business">Business & Services</option>
</select>
<br>
<label for="exampleInputName2">Select sub-service type:</label><br>
<select id="select2" name="select2" required></select><br>
<span id="sp1"></span>

<label for="exampleInputName2">Any Comments for Service:</label><br>
<textarea class="form-control" name="comm" rows="3" placeholder="Comments"></textarea>
<br>

<center>
    <input  class="btn btn-success" id="but" type="submit" name="action" value="Select Service Provider">
     
</center>
</form>

<br>


</div>
</div>
</div>

<br>
<%@ include file="footer.html" %>

</body>
</html>
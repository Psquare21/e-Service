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
	var check= /^[a-zA-Z ]+$/;
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
	var url="ajaxuser2.jsp?val="+name;  
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
	checkemail();
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
	var url="ajaxemail2.jsp?val="+name;
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

function xyz(){
	var x = document.form.select2.options;
	var data="";
	for(i=0;i<x.length;i++){
		if(document.form.select2.options[i].selected){
			data = data + " " + document.form.select2.options[i].value;
		}
	}
	document.getElementById("span").value=data;
}

</script>
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
            <div id="hornav" class="bottom-border-shadow">
                <div class="container no-padding border-bottom">
                    <div class="row">
                        <div class="col-md-8 no-padding">
                            <div class="visible-lg">
                                <ul id="hornavmenu" class="nav navbar-nav">
                                    <li>
                                        <a href="index.jsp" class="fa-home active">Home&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                                    </li>
                                    <li>
                                        <a href="all_services.html">
                                        <span class="fa-gears ">All Services&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a>
                                        
                                    </li>
                                    <li>
                                        <a href="how_it_works.html">
                                        <span class="fa-copy ">How It Works &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a>
                                        
                                    </li>
                                    <li>
                                        <a href="about_us.html">
                                        <span class="fa-th ">About Us&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a>
                                    </li>
                                    <li>
                                        <a href="contact.html" class="fa-comment ">Contact &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                                    </li>
                                    <li>
                                        <a href="Login.jsp">
                                        <span class="fa-th">Login&nbsp;</span></a>
                                    </li>
                                   
                                   
                                </ul>
                                 </div>
                        </div>
                        </div>
                </div>
            </div>

<div class="container">
<h1 style="text-align:center">
    SIGN UP FOR SERVICE PROVIDER
</h1>
<div class="col-md-3"></div>
<div class="col-md-6">

<form method="post" id="pnm" name="form" action="signup2">


<label for="exampleInputName2">Company Name:</label>
<input type="text" name="name" onblur="checkfname()" placeholder="First Name" class="form-control" required>
<span id="f1" style="color:red"></span><br>


<label for="exampleInputName2">User Name:</label>
<input type="text" name="uid" onblur="checkusername()" placeholder="User Name" class="form-control" required>
<span id="raj" style="color:red"></span><br>



<label for="exampleInputEmail1">Email:</label>
<input type="email" name="mail"  onblur="validemail()" placeholder="Email" class="form-control" required>
<span id="raj1" style="color:red"></span><br><span id="raj2" style="color:red"></span><br>

<label for="exampleInputPassword1">Password:</label>
<input type="password" name="pass"  placeholder="Password" class="form-control"required>



<label>Address:</label>
<textarea class="form-control" name="add" rows="3" placeholder="Address" required></textarea>

    <label for="">Phone :</label>
    <input type="text" name="phon"  maxlength="10" onblur="checknum()" placeholder="Phone Number" class="form-control"required>
	<span id="n1" style="color:red"></span><br>


    <label>City</label>

    <input type="text" name="city" id="city" maxlength="10" placeholder="City Name" class="form-control"required><br>
    
    <label>Service type</label>
    <select id="select" name="select"  class="form-control" onchange="change(this.id,'select2')" required>
    <option value=""></option>
    <option value="homecare">Home Care & Design</option>
    <option value="health">Health and Wellness</option>
    <option value="repair">Repair and Maintenance</option>
    <option value="event">Events</option>
    <option value="beauty">Beauty</option>
    <option value="business">Business Services</option>
    </select> 
   
   <label>Sub-Service type</label> 
 <select id="select2" name="select2" class="form-control" onchange="xyz()" required multiple></select>
 <p>Hold down the Ctrl (windows) / Command (Mac) button to select multiple options.</p>
<br>
<input type="text" name="span" id="span" hidden>
    <br>
<center>
    <button class="btn btn-success" id="but" type="submit" name="submit" >Sign Up</button>
</center>
</form>
</div>
</div>
</div>

<br>
<%@ include file="footer.html" %>

</body>
</html>
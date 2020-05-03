<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container" style="padding-bottom: 195px;">
<h2 style="text-align:center">Welcome to Admin Panel</h2>

<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<div class="well">
<div class="alert alert-info">
Please login with your Admin ID and Password.
</div>

<h5 style="color: red;">${msg}</h5>
<form class="cen" name="login" class="form-horizontal" action="../AdminLogin" method="post">

<div class="input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-user blue"></i></span>
    <input type="text" class="form-control" placeholder="User Name" name="id" required>
</div>
<div class="clearfix"></div><br>
<div class="input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-lock blue"></i></span>
    <input type="password" class="form-control" placeholder="Password" name="pass" required>
</div>

<br>
<p>
<button type="submit" class="btn btn-primary" name="login" value="login">Login</button>
</p>
</form>

</div>
</div>
<div class="col-md-3"></div>

</div>
</div>
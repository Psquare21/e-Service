<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.html" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<form method="post" id="pnm" name="form" action="../SPregistration">
<h1>Register yourself:</h1>
<div>
<label>Name:</label>
<input type="text" name="id" size="70" placeholder="First Name" required>
</div><br>

<div>
<label>Password:</label>
<input type="password" name="pass" size="70" placeholder="Password" required>
</div><br>

<div>
<label>Email ID:</label>
<input type="email" name="email" size="70" onblur="sendInfo1()" placeholder="Email" required>
</div><br>

<div>
    <label for="">Phone :</label>
    <input type="text" name="phon" size="70" maxlength="10" placeholder="Phone Number" required>
</div>
<br>

<div>
<label>Which service do you want to provide?</label><br>
<input type="text" name="se_name" size="70" placeholder="Service name" required>
</div><br>

<div >
    <button type="submit"  id="myButton" name="submit">Register</button>
</div>

</form>

</center>


</body>
</html>
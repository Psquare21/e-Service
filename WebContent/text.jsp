<%@page import="java.util.List"%>
<%@page import="com.dao.sp_showdao"%>
<%@page import="com.bean.admin"%>
<%@page import="com.bean.signup2"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function ab(){
	document.getElementById("sp").innerHTML="<table><tr><td>Hello</td></tr></table>";
}
function xy(){
	document.getElementById("sp").innerHTML="";
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

  <% List<signup2> list = sp_showdao.getallsp(); %> 
<form>
<input type="button" id="b1" name="b1" value="1" onclick="ab()">
<br>
<input type="button" id="b2" name="b2" value="2" onclick="xy()">
<br>
<span id="sp"></span>
</form>
</body>
</html>
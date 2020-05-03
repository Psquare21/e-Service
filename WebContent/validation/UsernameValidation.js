var request;  
function sendInfo()  
{  
var v=document.form.uid.value;  
var url="AjaxController?val="+v;  

if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try  
{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}  
catch(e)  
{  
alert("Unable to connect to server");  
}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;
document.getElementById('pruthviraj').innerHTML=val;
if(val=="Not Available")
	{
		alert("This User Name Is Not Available. Please Choose Another");
		document.form.uid.focus();
		return false;
	}
}  
}  

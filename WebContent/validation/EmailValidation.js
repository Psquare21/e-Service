var request1;

function sendInfo1()  
	{  
		var v1=document.form.mail.value;  
		var url1="email?val1="+v1;  

		if(window.XMLHttpRequest)
		{  
			request=new XMLHttpRequest();  
		}  
		else if(window.ActiveXObject)
		{  
			request=new ActiveXObject("Microsoft.XMLHTTP");  
		}  
	try  
	{  
		request.onreadystatechange=getInfo1;  
		request.open("GET",url1,true);  
		request.send();  
	}  
	catch(e)  
	{  
		alert("Unable to connect to server");  
	}  
	}  
 
function getInfo1()
{
	if(request.readyState==4)
	{  
		var val1=request.responseText;
		document.getElementById('pruthviraj1').innerHTML=val1;
		if(val1=="This Email ID is already register!")
		{
			alert("This Email ID is already register! Please Enter Another");
			document.form.mail.focus();
			return false;
		}
	}  
}  
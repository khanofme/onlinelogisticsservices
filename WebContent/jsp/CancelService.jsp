<%@ page language="java"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CancelService</title>
<script>
function checkOrderId(ui)
{
	if(XMLHttpRequest)
		{
		x=new XMLHttpRequest();
		}
	else
		{
		x=new ActiveXObject("Microsoft.XMLHTTP");
		}
	x.onReadystatechange=function()
	{
		if(x.readyState==4 && x.status==200)
			{
			var info=x.responseText();
			document.getElementById("msg").innerHTML="<font color='red'>"+info+"</font>";
			}
	}
	x.open("GET","/logistics/Registration?Orderid="+ui,"true");
	x.send();
	}
</script>
<style>

</style>
</head>
<body background="/logistics/images/cancelled.jpg" >
 <div style="background-color:#333;color:white;font-family:Arial;width:85%;height:50px;text-align:center">
Cancel your service
</div>
<hr>
<font face="Times new roman" size="5px">
Do you want to cancel our service for you...Please enter your orderid?</font>
<form method="post" action="/logistics/jsp/delservice.jsp" onblur="checkOrderId(this.value)">
<div align="center" style="width:40%;height:50px;margin-left:3%;margin-top:3%">
<div class="form-floating mb-3" name="ordeid" id="ordeid" required="required">
  <input type="text" class="form-control" >
  <label for="floatingInput">Order id</label>
</div>

<%String ms=request.getParameter("msg");
if(ms!=null)
{%>
<h3 style="color:blue"></h3>
<%=ms %>
<%} %> 


<Button class="btn btn-success" type="submit" >Cancel service</button>
<button class="btn btn-success" type="reset">Clear it</button>
</div>
</form>



</body>
</html>
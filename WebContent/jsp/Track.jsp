<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
</head>
<body background="/logistics/images/ship.jpg">
<div style="background-color:#333; color: black; font-family:Monotype corsiva; font-size: 50px; width: 100%; height: 100px;margin-top:-60px;margin-bottom:30px; text-align: center">
<h2>Wanna track your order!!</h2></div>
		<%HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("usr");
if(ui==null||hs.isNew())
{
	response.sendRedirect("/logistics/jsp/HomePage.jsp");
}
else
{%>
<form method="post" action="/logistics/jsp/TrackOrder.jsp"  onblur="checkOrderId(this.value)">
<div style="margin-left:30px;margin-right:40px;" class="form-floating mb-3">
  <input type="text" class="form-control" name="orderid" id="orderid">
  <label for="floatingInput">Order id</label>
</div>

<center><Button class="btn btn-success" type="submit">Track</Button></center>

</form>
<%}%>
<%String ms=request.getParameter("msg");
if(ms!=null)
{%>
<h3 style="color:blue"></h3>
<%=ms %>
<%} %>
<jsp:include page="TrackOrder.jsp"></jsp:include>
</body>
</html>
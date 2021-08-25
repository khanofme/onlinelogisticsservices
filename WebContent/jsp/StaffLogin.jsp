<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="/logistics/JS/validation.js"></script>
<script>
		function checkMain()
		{
		var ui=document.getElementById("Staffid1").value;
		var upass=document.getElementById("password1").value;
		if(checkEmpty(ui)==false)   //checks the value of textfiled if it is 0 or filled
			{
			alert("userid required");
			document.getElementById("Staffid1").focus();
			return false; //returns false and stops empty form from submitting
			}
		if(checkEmpty(upass)==false)   //checks the value of textfiled if it is 0 or filled
		{
		alert("password required");
		document.getElementById("password1").focus();
		return false; //returns false and stops empty form from submitting
		}
		else
		return true;
		}

</script>
<style>
a:link {
	color:white;
	background-color:blue;
}

a:visited {
	color: white;
	background-color:blue;
}

a:hover {
	color: blue; 
	background-color: white;
}

a:active {
	color: blue;
	background-color: white;
}
a {
	text-decoration:none;
	text-shadow: gray;
	border-radius:10px;
	text-transform: capitalize;
	
}
</style>
</head>
<body background="/logistics/images/team1.jpg">

<Form method="post" action="/logistics/Staffcheck"  onsubmit="return checkMain()" >
<div style="color:orange">
<table align="center" style="width:200px;height:200px;margin-top:70px;">
<tr><th><label>Staff ID:</label></th>
<td><input type="text" name="Staffid" id="Staffid1" size="30" placeholder="Enter userid" required="required"></td></tr>
<tr><th><label>Password:</label></th>
<td><input type="password" name="password" id="password1" size="30" placeholder="Enter password" required="required"></td></tr>
<tr><th><label>Designation:</label></th>
<td><select name="urole" id="urole">
				<option value="Delivery boy">Delivery boy</option>
				<option value="General Manager">General Manager</option></select></td>
			</tr>
<%String ms=request.getParameter("msg");
if(ms!=null)
{%>
<h4 style="color:black"></h4>
<%=ms %>
<%} %>  
<tr><td colspan=2 align="center">
<button type="submit">submit</button>
</td></tr>
</table>
</div>
</Form>
</body>
</html>
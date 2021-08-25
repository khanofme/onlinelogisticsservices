<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AssignTruck</title>
</head>
<body>

<form method="post" action="/logistics/jsp/TruckAssignment.jsp">
<div style="background-color:#dfff80; color: black; font-family:Monotype Corsiva; font-size: 50px; width: 100%; height: 50px; text-align: center">
	<h2>Assign truck to orders!!</h2></div>



<div class="form-floating">
  <input type="text" class="form-control" id="ordid" name="ordid" required="required">
  <label for="floatingorderid">Order id</label>
</div>
<div class="form-floating">
  <input type="text" class="form-control" id="truckid" name="truckid" required="required">
  <label for="floatingtruckid">Truck id</label>
</div>
<center><Button class="btn btn-success" type="submit">Next</Button></center>			

</table>

<%String ms=request.getParameter("msg");
if(ms!=null)
{%>
<h3 style="color:blue"></h3>
<%=ms %>
<%} %>
</form>
</body>
</html>
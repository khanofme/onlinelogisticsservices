<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

<form method="post" action="/logistics/jsp/OrderStatus.jsp">
<div class="form-floating">
  <input type="text" class="form-control" name="orderid" id="orderid" required="required">
  <label for="floatingPassword">Order id</label>
</div>
<div class="form-floating">
  <textarea class="form-control" name="tstatus" id="tstatus" required="required"></textarea>
  <label for="floatingTextarea">Set order status</label>
</div>
<hr></hr>

<center><Button class="btn btn-success" type="submit">Set Status</Button></center>
<%String ms=request.getParameter("msg");
if(ms!=null)
{%>
<h3 style="color:blue"></h3>
<%=ms %>
<%} %>
</form>
</body>
</html>
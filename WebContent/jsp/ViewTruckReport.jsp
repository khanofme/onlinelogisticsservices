<%@ page language="java" import="java.sql.*,logistics.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TruckView</title>
</head>
<body bgcolor="white">
<center><h2><u>Truck Report</u></h2></center>
  <center><table class="table table-striped table-hover" width="50%" height="30%">
  <tr><th>Truck_id</th><th>Truck_name</th><th>Order id</th><th>Status</th></tr>
  <%Connection con=CrudOperation.createConnection(); 
  	PreparedStatement ps=con.prepareStatement(("Select * from truck"));
  ResultSet rst=ps.executeQuery();
  while(rst.next())
  {
	  String a=rst.getString("Truck_id");
	  String b=rst.getString("Truck_name");
	  String c=rst.getString("Orderid");
	  String d=rst.getString("Status");
	%>  
  <tr>
<td><b><font><%=a%></font></b></td>
<td><b><font><%=b%></font></b></td>
<td><b><font><%=c%></font></b></td>
<td><b><font><%=d%></font></b></td>
</tr>
<%}%>
  </table></center>
</body>
</html>
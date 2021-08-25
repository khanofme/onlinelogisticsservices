<%@ page language="java" import="java.sql.*,logistics.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="white">
<center><h2><u>Order Report</u></h2></center>
  <table border="0" class="table table-dark table-striped" width="50%" height="30%">
  <tr><th>Order_id</th><th>Commodity</th><th>Choice</th><th>Quantity</th><th>Size</th><th>Weight</th><th>Distance</th>
  <th>Pickup city</th><th>Delivery City</th><th>State</th><th>Status</th></tr>
  <%Connection con=CrudOperation.createConnection(); 
  	PreparedStatement ps=con.prepareStatement(("Select Orderid,comm_name,Choice,Quantity,Size,Weight,Distance,P_City,D_City,State,Status from businessp"));
  ResultSet rst=ps.executeQuery();
  while(rst.next())
  {
	  String a=rst.getString("Orderid");
	  String b=rst.getString("comm_name");
	  String c=rst.getString("Choice");
	  int d=rst.getInt("Quantity");
	  String e=rst.getString("Size");
	  String f=rst.getString("Weight");
	  String g=rst.getString("Distance");
	  String h=rst.getString("P_City");
	  String i=rst.getString("D_City");
	  String j=rst.getString("State");
	  String k=rst.getString("Status");
	%>  
  <tr>
<td><b><font><%=a%></font></b></td>
<td><b><font><%=b%></font></b></td>
<td><b><font><%=c%></font></b></td>
<td><b><font><%=d%></font></b></td>
<td><b><font><%=e%></font></b></td>
<td><b><font><%=f%></font></b></td>
<td><b><font><%=g%></font></b></td>
<td><b><font><%=h%></font></b></td>
<td><b><font><%=i%></font></b></td>
<td><b><font><%=j%></font></b></td>
<td><b><font><%=k%></font></b></td>
</tr>
<%}%>
  </table>
</body>
</html>
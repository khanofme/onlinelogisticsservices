<%@ page language="java" import="java.sql.*,logistics.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center><h2><u>Payment Report</u></h2></center>
  <table align="center" class="table table-striped table-hover" width="50%" height="30%">
  <tr><th>Invoice_no</th><th>OrderId</th><th>Commodity</th><th>Amount</th><th>Status</th></tr>
  <%Connection con=CrudOperation.createConnection(); 
  	PreparedStatement ps=con.prepareStatement(("Select Invoice_no,Order_id,Commodity,Amount,Status from bill"));
  ResultSet rst=ps.executeQuery();
  while(rst.next())
  {
	  String a=rst.getString("Invoice_no");
	  String b=rst.getString("Order_id");
	  String c=rst.getString("Commodity");
	  float d=rst.getFloat("Amount");
	  String f=rst.getString("Status");
	%>  
  <tr>
<td><b><font><%=a%></font></b></td>
<td><b><font><%=b%></font></b></td>
<td><b><font><%=c%></font></b></td>
<td><b><font><%=d%></font></b></td>
<td><b><font><%=f%></font></b></td>
</tr>
<%}%>
  </table>
</body>
</html>
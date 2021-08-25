<%@ page language="java" import="java.sql.*,logistics.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DeleteOrders</title>
</head>
<body>
<div style="background-color:#dfff80; color: black; font-family:Monotype Corsiva; font-size: 50px; width: 100%; height: 100px; text-align: center;margin-bottom:20px;margin-top:-30px" >
	<h2>Delete orders!!</h2></div>

<%Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
String strsql="select Orderid,comm_name from businessp where Status='Cancelled'";
con=CrudOperation.createConnection();
try
{
	ps=con.prepareStatement(strsql);
	rs=ps.executeQuery();%>
	<form method="post" action="/logistics/jsp/Delete.jsp">
		<table class="table table-striped table-hover" align="center" >
			<tr>
				<th>Delete</th>
				<th>Order ID</th>
				<th>Commodity</th>
			</tr>
			<%if(rs.next())
			{%>
			<tr>
				<td><input type="checkbox" name="chk"
					value="<%=rs.getString("Orderid")%>"></td>
				<td><%=rs.getString("Orderid")%></td>
				<td><%=rs.getString("comm_name") %></td>
			</tr>
			<!--<center><Button class="btn btn-success" type="submit">Delete</Button></center>-->
			<%}
			else
			{
			response.sendRedirect("/logistics/jsp/No.jsp?msg=<b><h2 style='color:red'>No cancellation requests!</h2></b>");
			}%>
		</table>
	<center><Button class="btn btn-success" type="submit">Delete</Button></center>
					
				<%String ms=request.getParameter("msg");
if(ms!=null)
{%>
<h3 style="color:blue"></h3>
<%=ms %>
<%} %>
			
	</form>
	<%}
catch(SQLException se)
{
System.out.println(se);
}%>
</body>
</html>
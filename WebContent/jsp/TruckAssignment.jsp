<%@ page language="java" import="java.sql.*,logistics.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TruckAssignment</title>
</head>
<body>
<div style="background-color:#dfff80; color: black; font-family:Monotype Corsiva; font-size: 50px; width: 100%; height: 100px; text-align: center">
	<h2>Assign truck to orders!!</h2></div>
<%
String o=request.getParameter("ordid");
String a=request.getParameter("truckid");

Connection con=CrudOperation.createConnection();
try
{
	PreparedStatement pst=con.prepareStatement("Select * from businessp where Orderid=?");
	PreparedStatement psmt=con.prepareStatement("Select * from truck where Truck_id=?");
	pst.setString(1,o);
	psmt.setString(1,a);
	ResultSet rst=pst.executeQuery();
	ResultSet rest=psmt.executeQuery();
	if(rst.next() && rest.next())
	{
		PreparedStatement ps=con.prepareStatement(("update truck set Orderid=?, Status=? where Truck_id=?"));
		ps.setString(1,o);
		ps.setString(2,"Engage");
		ps.setString(3,a);
		ps.executeUpdate();
		int rw=ps.executeUpdate();
		if(rw>0)
		{
		out.println("<h2><font face='Monotype corsiva'>Assigned</font></h2>");
		}
	}
	else
	{
		response.sendRedirect("/logistics/jsp/AssignTruck.jsp?msg=<b><h2 style='color:red'>invalid Order ID or Truck id</h2></b>");
	}
}
catch(SQLException se)
{
System.out.println(se);
}
%>
</body>
</html>
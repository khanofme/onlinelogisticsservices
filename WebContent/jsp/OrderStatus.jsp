<%@ page language="java" import="java.sql.*,logistics.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Status</title>
</head>
<body>
<%
String o=request.getParameter("orderid");
String s=request.getParameter("tstatus");
Connection con=CrudOperation.createConnection();
try
{
	PreparedStatement pst=con.prepareStatement("Select * from businessp where Orderid=?");
	pst.setString(1,o);
	ResultSet rst=pst.executeQuery();
	if(rst.next())
	{			
		PreparedStatement ps=con.prepareStatement(("update businessp set Status=? where Orderid=?"));
		ps.setString(1,s);
		ps.setString(2,o);
		ps.executeUpdate();
		int rw=ps.executeUpdate();
		if(rw>0)
		{
			response.sendRedirect("/logistics/jsp/SetOrderStatus.jsp?msg=<center><font face='Calibri' color='red'><h1><b>Order status saved!Thank you!</b></h1></font></center>");
		}
	}
	else
	{
		response.sendRedirect("/logistics/jsp/SetOrderStatus.jsp?msg=<center><b><h2 style='color:red'>Invalid Order ID!</h2></b></center>");
	}
}
catch(SQLException se)
{
System.out.println(se);
}
%>
</body>
</html>
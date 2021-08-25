<%@ page language="java" import="java.sql.*,logistics.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String p=request.getParameter("billid");
String s=request.getParameter("tstatus");
Connection con=CrudOperation.createConnection();
try
{
	PreparedStatement pst=con.prepareStatement("Select * from bill where Invoice_no=?");
	pst.setString(1,p);
	ResultSet rst=pst.executeQuery();
	if(rst.next())
	{
		PreparedStatement ps=con.prepareStatement(("update bill set Status=? where Invoice_no=?"));
		ps.setString(1,s);
		ps.setString(2,p);
		ps.executeUpdate();
		int rw=ps.executeUpdate();
		if(rw>0)
		{
			response.sendRedirect("/logistics/jsp/SetPayStatus.jsp?msg=<center><font face='Calibri' color='red'><h1><b>Payment status saved!Thank you!</b></h1></font></center>");
		}
	}
		else
		{
			
			response.sendRedirect("/logistics/jsp/SetPayStatus.jsp?msg=<b><h2 style='color:red'>Invalid invoice number!</h2></b>");
		}
}
catch(SQLException se)
{
System.out.println(se);
}
%>
</body>
</html>
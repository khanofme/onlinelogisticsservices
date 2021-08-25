<%@ page language="java" import="java.sql.*,logistics.*" import="java.io.PrintWriter" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%int flag=0;
String o=request.getParameter("ordeid");

try
{
	String strsql="select * from businessp where Orderid=?";
String strupdate="Update businessp set Status=? where Orderid=?";
	String strdelete="delete from businessp where Orderid=?";
Connection con=CrudOperation.createConnection();
PreparedStatement psm=con.prepareStatement(strsql);
PreparedStatement psmt=con.prepareStatement(strdelete);
PreparedStatement ps=con.prepareStatement(strupdate);
psm.setString(1,o);
ResultSet rs=psm.executeQuery();
System.out.println(psm);

if(rs.next())
{
	
	ps.setString(1,"Cancelled");
	ps.setString(2,o);
	ps.executeUpdate();
	response.sendRedirect("/logistics/jsp/CancelService.jsp?msg=<b><h1 style='color:red'>Cancelled</h1></b>");
/*	psmt.setString(1,o);
	int rw=psmt.executeUpdate();
	if(rw<0)
	{
		flag=1;
	out.println("<h2><b>One Record Sucessfully Deleted!!!</b></h2>");
	}
	if(flag==0)
	{
		//response.sendRedirect("/logistics/jsp/CancelService.jsp");
		out.println("<h2><b>Your service with orderid &nbsp;"+o+"&nbsp;has been cancelled</b></h2>");
	}*/
	
}
else
{
	response.sendRedirect("/logistics/jsp/CancelService.jsp?msg=<b><h2 style='color:red'>invalid Order ID</h2></b>");	
}

}
catch(SQLException e1)
{
out.println("Error FOund in Page"+e1);
}%>
</body>
</html>
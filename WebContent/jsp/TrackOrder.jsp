<%@ page language="java" import="java.sql.*,logistics.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String o=request.getParameter("orderid");
Connection con=CrudOperation.createConnection();
PreparedStatement ps=con.prepareStatement("Select Status from businessp where Orderid=?");
ps.setString(1,o);
ResultSet rst=ps.executeQuery();
if(rst.next())
{
String q=rst.getString("Status");
%>
<div align="center">
Your Order Status is:&nbsp;&nbsp;<%=q %></div>
<%}
else
{
	response.sendRedirect("/logistics/jsp/Track.jsp?msg=<b><h2 style='color:red'>invalid Order ID</h2></b>");	

}%>
</body>
</html>
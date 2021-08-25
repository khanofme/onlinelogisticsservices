<%@ page language="java" import="java.sql.*,logistics.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Connection con=CrudOperation.createConnection();
try
{
PreparedStatement prst=con.prepareStatement("Select Name,Subject,Comment from comment where Product_name=?");
prst.setString(1,p);
ResultSet rsut=pst.executeQuery();
if(rsut.next())
{%>		
		<div style="width:30%;background-color: #ccf5ff">
		<input type="text" name="nm" id="nm" value="<%=rsut.getString("Name")%>"><br>
		<input type="text" name="co" id="co" value="<%=rsut.getString("Comment")%>"></div>

	
<%}
}
catch(SQLException se)
{
	System.out.println(se);
}%>
</body>
</html>
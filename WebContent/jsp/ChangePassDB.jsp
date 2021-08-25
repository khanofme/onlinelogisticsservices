<%@ page language="java" import="java.sql.*,logistics.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("Delivery boy");
String strsql="select * from log_staff where Designation!='General Manager' and Staff_id=?";
con=CrudOperation.createConnection();
try
{
	ps=con.prepareStatement(strsql);
	ps.setString(1,ui);
	rs=ps.executeQuery();%>
	<div
		style="background-color:#dfff80; color: black; font-family: Forte; font-size: 50px; width: 100%; height: 100px;margin-top:-50px;margin-bottom:40px; text-align: center">
	<center><h3>Change your Password!!</h3></center></div>
	<form method="post" action="/logistics/jsp/UpdatePassDB.jsp">
		<table border=2 align="center">
			<tr><th>Userid</th>
				<th>Password</th></tr>
			<%while(rs.next())
		{%>
			<tr>
				<td><%=ui%></td>
				<td><%=rs.getString("Password") %></td></tr>
			<%}%>
			<tr>
				<td colspan=3>
					<Button type="Submit">Edit</Button>
				</td>
			</tr>
		</table>
	</form>
	<%}
catch(SQLException se)
{
System.out.println(se);
}%>
</body>
</html>
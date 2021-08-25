<%@ page language="java" import="java.sql.*,logistics.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<font face="Monotype corsiva" size="20px">Your Feedbacks!!</font>
<%Connection con=CrudOperation.createConnection(); 
  	PreparedStatement ps=con.prepareStatement(("Select User_Id,Feedback from feedback"));
  ResultSet rst=ps.executeQuery();

  while(rst.next())
  {
	  String a=rst.getString("User_Id");
	  String b=rst.getString("Feedback");
%>
 
 <div style="border:1;border-color:blue;"><label>Userid:</label>
<font color='#663300'><b><%=a%></b></font>
<label>Feedback:</label><font color='#663300'><b><%=b%></b></font>
<%} %>
</table>
</body>
</html>
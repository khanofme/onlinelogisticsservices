<%@ page language="java" import="java.sql.*,logistics.*;" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String u=request.getParameter("txtuserID");
String fd=request.getParameter("txtfeedback");
Connection con=CrudOperation.createConnection();
PreparedStatement ps=con.prepareStatement("insert into feedback(User_Id,Feedback) values(?,?)");
ps.setString(1,u);
ps.setString(2,fd);
ps.executeUpdate();
out.println("<h2><font face='Monotype Corsiva' color='C2A3FF' size='30px' align='center'>Thank you for your feedback!It will be shown next time you login!</font></h2>");
%>
</body>
</html>
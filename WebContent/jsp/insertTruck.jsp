<%@ page language="java" import="java.sql.*,logistics.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String t=request.getParameter("txttruck");
String s=request.getParameter("trucknm");
Connection con=CrudOperation.createConnection();
PreparedStatement ps=con.prepareStatement("insert into truck(Truck_id,Truck_name) values(?,?)");
ps.setString(1,t);
ps.setString(2,s);
ps.executeUpdate();
System.out.println("truck added");


%>
</body>
</html>
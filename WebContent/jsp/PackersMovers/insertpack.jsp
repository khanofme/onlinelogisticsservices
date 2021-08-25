<%@ page language="java" import="java.sql.*,logistics.*;" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String md=request.getParameter("movid");
String h=request.getParameter("cmbapart");	
String dpa=request.getParameter("pickaddr1");
String dpc=request.getParameter("cmbpcity1");
long dpp=Long.parseLong(request.getParameter("pickpin1"));
long dpm=Long.parseLong(request.getParameter("picknum1"));
String dda=request.getParameter("deladdr1");
String ddc=request.getParameter("cmbdcity1");
long ddp=Long.parseLong(request.getParameter("delpin1"));
long ddm=Long.parseLong(request.getParameter("delnum1"));
String dn=request.getParameter("urname1");
String dem=request.getParameter("uremail1");
long dmb=Long.parseLong(request.getParameter("urnum1"));
String dst=request.getParameter("urstate1");
String dct=request.getParameter("urcountry1");
Connection con=null;
con=CrudOperation.createConnection();
PreparedStatement psmt=con.prepareStatement(("insert into packmove values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"));
psmt.setString(1,md);
psmt.setString(2,h);
psmt.setString(3,dpa);
psmt.setString(4,dpc);
psmt.setLong(5,dpp);
psmt.setLong(6,dpm);
psmt.setString(7,dda);
psmt.setString(8,ddc);
psmt.setLong(9,ddp);
psmt.setLong(10,ddm);
psmt.setString(11,dn);
psmt.setString(12,dem);
psmt.setLong(13,dmb);
psmt.setString(14,dst);
psmt.setString(15,dct);
int rw=psmt.executeUpdate();
if(rw>0)
{
System.out.println("row inserted successfully");
response.sendRedirect("/logistics/jsp/Items.jsp?msg=order received successfully");
}
%>
</body>
</html>
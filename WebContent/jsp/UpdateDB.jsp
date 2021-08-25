<%@ page language="java" import="java.sql.*,logistics.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UPDATE</title>
</head>
<body>
<%String upass=request.getParameter("usrpass");
		
		String ua=request.getParameter("txthid");
		String strupdate="update log_staff set Password=? where Staff_id=?";
		String strupdate1="update staff_register set Password=? where Staff_id=?";
		Connection con=CrudOperation.createConnection();
		try
		{
			PreparedStatement ps=con.prepareStatement(strupdate);
			PreparedStatement pst=con.prepareStatement(strupdate1);
			ps.setString(1,upass);
			ps.setString(2,ua);
			pst.setString(1,upass);
			pst.setString(2,ua);
			int rw=ps.executeUpdate();
			int rw1=pst.executeUpdate();
			if(rw>0 && rw>0)
			{
			response.sendRedirect("/logistics/jsp/UpdatePassDB.jsp");
			System.out.println("row updated");
			}
		
		}
		catch(SQLException se)
		{
			System.out.println(se);
		}%>
</body>
</html>
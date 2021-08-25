<%@ page language="java" import="java.sql.*,logistics.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete</title>
</head>
<body>
<%
int flag=0;
	String strdelete="delete from businessp where Orderid=?";
	String chkarr[]=request.getParameterValues("chk");
	//long t1=System.currentTimeMillis();
	Connection con=CrudOperation.createConnection();
	try
	{
		con.setAutoCommit(false);
	PreparedStatement ps=con.prepareStatement(strdelete);
		for(int i=0;i<chkarr.length;i++)
		{
			ps.setString(1,chkarr[i]);
			ps.addBatch();
		}
	int arr[]=ps.executeBatch();
//	long t2=System.currentTimeMillis();
	for(int j=0;j<arr.length;j++)
		{
	//	System.out.println("time elapsed"+(t2-t1));
			if(arr[j]<0)
			{
				flag=1;
			}
		}
		if(flag==0)
		{
		con.commit();
		response.sendRedirect("/logistics/jsp/DeleteOrders.jsp?msg=<h1 style='color:red'>Thank you!</h1></b>");
		}
	}
	catch(SQLException se)
	{
		System.out.println(se);
	}
	
	%>
</body>
</html>
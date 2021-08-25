<%@ page language="java" import="java.sql.*,logistics.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

		<%HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("Delivery boy");
if(ui==null||hs.isNew())
{
	response.sendRedirect("/logistics/jsp/HomePage.jsp");
}
else
{%>
		
	<%String strsql="select * from staff_register where Staff_id=?";
	Connection con=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	con=CrudOperation.createConnection();
	try
	{
		ps=con.prepareStatement(strsql);
		ps.setString(1,ui);
		rs=ps.executeQuery();
		if(rs.next())
		{%>
	<table class="table table-dark table-hover" style="width: 200px; height: 200px" align="center">
		<tr>
				<th>Staff ID:</th>
				<th><input type="text" name="Staffid" readonly
				 value="<%=rs.getString("Staff_id")%>"></th>
			<tr>
				<th>Password:</th>
				<th><input type="password" name="password" readonly
					value="<%=rs.getString("Password")%>"></th>
					<tr>
				<th>Name:</th>
				<th><input type="text" name="urole" readonly
				 value="<%=rs.getString("Designation")%>"></th>
			<tr>
				<th>Name:</th>
				<th><input type="text" name="name" readonly
					 value="<%=rs.getString("Name")%>">Read only</th>
			<tr>
				<th>Gender:</th>
				<th><input type="text" name="gender" readonly
					 value="<%=rs.getString("Gender")%>">Read only</th></tr>
			<tr>
				<th>Address:</th>
				<th><input type="text" name="addr" readonly
					value="<%=rs.getString("Address")%>"></th></tr>
			<tr>
				<th>City:</th>
				<th><input type="text" name="city" readonly
				 value="<%=rs.getString("City")%>"></th></tr>
			<tr>
				<th>State:</th>
				<th><input type="text" name="state" readolny
					 value="<%=rs.getString("State")%>"></th></tr>
				<tr>
				<th>Country:</th>
				<th><input type="text" name="country" readonly
					 value="<%=rs.getString("Country")%>"></th></tr>	
			<tr>
				<th>Pincode:</th>
				<th><input type="number" name="pin" readonly
					value="<%=rs.getString("Pincode")%>"></th></tr>
			<tr>
				<th>Email:</th>
				<th><input type="text" name="email" readolny
					value="<%=rs.getString("Email")%>"></th></tr>
					
			<tr>
				<th>Phone number:</th>
				<th><input type="number" name="phnnumb" readonly
					value="<%=rs.getString("Mobile_no")%>"></th>
			</tr>
			<tr>
				<th>Date of Birth:</th>
				<th><input type="text" name="dobs" readonly
					 value="<%=rs.getString("DateofBirth")%>"></th>
			<tr>
				<th colspan=2>
					<button class="btn btn-dark" type="submit">submit</button>
				</th>
			</tr>
			
	</table>
	<%}
	}
	catch(SQLException se)
	{
		System.out.println(se);
	}
}%>
</body>
</html>
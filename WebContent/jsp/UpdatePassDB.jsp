<%@ page language="java" import="java.sql.*,logistics.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Password DB</title>
 <script type="text/javascript">
 function validate2()
 {
	 var e3 = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[@#$%^&])([a-zA-Z0-9 ]*).{6,10}$/;
 var sp3 = document.getElementById("usrpass1");
 if(document.sta.usrpass.value=="")
 {
	alert("password is required");
	// sp3.innerHTML = "Password is required!";
	return false;
 }
 else if(e3.test(document.sta.usrpass.value)==false)
 {
	 alert("Use One small, Capital, digit and special symbol with atleast 6 to 10 character long in password");
	// sp3.innerHTML = "Use One small, Capital, digit and special symbol with atleast 6 to 10 character long.";
	 return false;
 }
 else
 {
	 sp3.innerHTML="Ok";
 }
 return false;
 }
</script>
</head>
<body>

<%HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("Delivery boy");
if(ui==null||hs.isNew())
{
	response.sendRedirect("/logistics/jsp/HomePage.jsp");
}
else
{
String strsql="select * from log_staff where Staff_id=?";
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
	<form method="post" action="/logistics/jsp/UpdateDB.jsp">
	
		<table class="table table-striped table-hover" align="center">
			<tr>
				<th>Userid:</th>
				<td><input class="floating-control" type="text" name="usrid" id="usrid" readonly value="<%=ui%>">
					</td>
			</tr>
			<tr>
				<th>Password:</th>
				<td><input class="floating-control" type="text" name="usrpass" id="usrpass1"
					value="<%=rs.getString("Password")%>" onsubmit="return validate2()"></td>
			</tr>
			<tr>
				<td><input type="hidden" name="txthid" id="txthid"
					value="<%=ui%>"></td>
			</tr>
			
				
			
		</table>
		<center><Button class="btn btn-success" type="submit">Update</Button></center>
	</form>
	<%}		
	}
		catch(SQLException se)
		{
			System.out.println(se);
		}

}%>
</body>
</html>
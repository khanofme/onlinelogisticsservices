<%@ page language="java" import="java.sql.*,logistics.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DeliveryBoy</title>
<style>
.sidebar {
  margin: 0;
  margin-top:;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #04AA6D;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

</style>
<style>
.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body>
<body>

		<div class="topnav">

  <a class="active" href="/logistics/jsp/HomePage.jsp">Home</a>
  
  
</div>
		
			<%HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("Delivery boy");
if(ui==null||hs.isNew())
{
	response.sendRedirect("/logistics/jsp/HomePage.jsp?msg=Unauthorized Access");
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
		 <div class="sidebar">
  
 <a class="active" href="/logistics/jsp/EditProfileDB.jsp"target="frame1" >Edit your profile</a>
 		<a href="/logistics/jsp/ViewProfileDB.jsp" target="frame1">View your profile</a>
 		<a href="/logistics/jsp/SetPayStatus.jsp" target="frame1">Set payment status</a>
 		<a href="/logistics/jsp/SetOrderStatus.jsp" target="frame1">Set order status</a>
 		<a href="/logistics/jsp/UpdatePassDB.jsp" target="frame1">Change your password</a>
 		<a href="/logistics/jsp/Logout.jsp">logout</a>
 		</div>	
	
		<div style="width:120%;height:400px;margin-left:220px;margin-top:10px">
		<iframe name="frame1" width="60%" height="600px" src=""></iframe>
	</div>
	<%}
		else 
		{%>
	<a href="/logistics/jsp/CreateProfileGM.jsp">Create your profile</a>
	<%}
	}
		catch(SQLException se)
		{
		System.out.println(se);
		}

	}%>

</body>
</html>
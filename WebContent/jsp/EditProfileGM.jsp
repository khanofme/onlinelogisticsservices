<%@ page language="java" import="java.sql.*,logistics.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EditProfileGM</title>
 <script type="text/javascript">
 function validate2()
 {
	 var e3 = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[@#$%^&])([a-zA-Z0-9 ]*).{6,10}$/;
 var sp3 = document.getElementById("password1");
 if(document.sta.password.value=="")
 {
	alert("password is required");
	// sp3.innerHTML = "Password is required!";
	return false;
 }
 else if(e3.test(document.sta.usrpassword.value)==false)
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
<script type="text/javascript">
function validateForm()
{
 var e1 = /^[a-zA-Z ]*$/;
 var sp1 = document.getElementById("cit1");
 if(document.sta.city.value=="")
 {
	 alert("city name is required");
	//sp1.innerHTML = "User Name is required!";
	return false;
 }
 else if(e1.test(document.sta.city.value)==false)
 {
	 alert("only alphabets are applicable in city name");
	 //sp1.innerHTML = "Only alphabets are applicable!";
	 return false;
 }
 else
 {
	 sp1.innerHTML="Ok";
 }
 return false;
}
</script>
<script type="text/javascript">
function validateForm9()
{
 var e9 = /^[a-zA-Z ]*$/;
 var sp9 = document.getElementById("stat1");
 if(document.sta.state.value=="")
 {
	 alert("city name is required");
	//sp1.innerHTML = "User Name is required!";
	return false;
 }
 else if(e9.test(document.sta.state.value)==false)
 {
	 alert("only alphabets are applicable in city name");
	 //sp1.innerHTML = "Only alphabets are applicable!";
	 return false;
 }
 else
 {
	 sp1.innerHTML="Ok";
 }
 return false;
}
</script>
<script type="text/javascript">
function validate3()
{
 var e4 = /^([0-9]*).{10,10}$/;
 var sp4 = document.getElementById("phnnumb1");
 if(document.sta.phnnumb.value=="")
 {
		alert("Contact number is required ");
	//sp4.innerHTML = "Contact No. is required!";
	return false;
 }
 else if(e4.test(document.sta.phnnumb.value)==false)
 {
	 alert("Enter a 10 digit phone number");
	// sp4.innerHTML = "Only 10 digits!";
	 return false;
 }
 else
 {
	 sp4.innerHTML="Ok";
 }
 return false;
}
</script>
<script type="text/javascript">
function validate5()
{
var e5 =/^([_A-Za-z0-9-]*)+(\.[_A-Za-z0-9-]+)*@([A-Za-z0-9-]+\.)+([A-Za-z]{2,3})$/;
 var sp5 = document.getElementById("email1");
 if(document.sta.email.value=="")
 {
	alert("Email id is required");
	// sp5.innerHTML = "Email id is required!";
	return false;
 }
 else if(e5.test(document.sta.email.value)==false)
 {
	 alert("Please input valid email Id. eg. abc@gmail.com");
	 //sp5.innerHTML = "Please input valid email Id. eg. abc@gmail.com";
	 return false;
 }
 else
 {
	 sp5.innerHTML="Ok";
	 return true;
 }
 return false;
}
</script>

<script type="text/javascript">
function validateForm0()
{
	var e6= /^([0-9]*).{10,10}$/;
 var sp6=document.getElementById("pin1");
 if(document.sta.pin.value=="")
	 {
	alert("pincode is required");
	// sp6.innerHTML = "Email id is required!";
	 return false;
	 }
 else if(e6.test(document.sta.pin.value)==false)
	 {
	 alert("Please enter a pincode of 6 digits");
	//sp6.innerHTML = "Please input valid email Id. eg. abc@gmail.com";
	 return false;
	 }
 else
	 {
	 sp6.innerHTML="ok";
	 }
return false;
}
</script>

</head>
<body>

		<%HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("General Manager");
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
	<Form method="post" name="sta" action="/logistics/EditGM">
		<table class="table table-dark" style="width: 200px; height: 200px" align="center"
			>
			<tr>
				<th>Staff ID:</th>
				<th><input type="text" name="Staffid"
					readonly value="<%=rs.getString("Staff_id")%>"></th>
			<tr>
				<th>Password:</th>
				<th><input type="password" name="password" id="password1"
					value="<%=rs.getString("Password")%>" onblur="return validate2()"></th>
					<tr>
				<th>Name:</th>
				<th><input type="text" name="urole"
				readonly value="<%=rs.getString("Designation")%>"></th>
			<tr>
				<th>Name:</th>
				<th><input type="text" name="name"
					readonly value="<%=rs.getString("Name")%>"></th>
			<tr>
				<th>Gender:</th>
				<th><input type="text" name="gender"
					readonly value="<%=rs.getString("Gender")%>"></th></tr>
			<tr>
				<th>Address:</th>
				<th><input type="text" name="addr" required="required"
					value="<%=rs.getString("Address")%>"></th></tr>
			<tr>
				<th>City:</th>
				<th><input type="text" name="city" id="cit1"
				value="<%=rs.getString("City")%>" onblur="return validateForm()"></th></tr>
			<tr>
				<th>State:</th>
				<th><input type="text" name="state" id="stat1"
					value="<%=rs.getString("State")%>" onblur="return validateForm9()"></th></tr>
				<tr>
				<th>Country:</th>
				<th><input type="text" name="country"
					 readonly value="<%=rs.getString("Country")%>"></th></tr>	
			<tr>
				<th>Pincode:</th>
				<th><input type="number" name="pin" id="pin1"
					value="<%=rs.getString("Pincode")%>" onblur="return validateForm0()"></th></tr>
			<tr>
				<th>Email:</th>
				<th><input type="text" name="email" id="email1"
					value="<%=rs.getString("Email")%>" onblur="return validate5()"></th></tr>
					
			<tr>
				<th>Phone number:</th>
				<th><input type="number" name="phnnumb" id="phnnumb1"
					value="<%=rs.getString("Mobile_no")%>" onblur="return validate3()"></th>
			</tr>
			<tr>
				<th>Date of Birth:</th>
				<th><input type="text" name="dobs"
					readonly value="<%=rs.getString("DateofBirth")%>"></th>
			<tr>
				<th colspan=2>
					<button class="btn btn-success" type="submit">submit</button>
				</th>
			</tr>
		</table>
	</Form>
	<%}		
}
		catch(SQLException se)
		{
			System.out.println(se);
		}

}%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="/logistics/JS/validation.js"></script>
<script>
		function checkMain()
		{
		var ui=document.getElementById("Staffid1").value;
		var upass=document.getElementById("password1").value;
		if(checkEmpty(ui)==false)   //checks the value of textfiled if it is 0 or filled
			{
			alert("userid required");
			document.getElementById("Staffid1").focus();
			return false; //returns false and stops empty form from submitting
			}
		if(checkEmpty(upass)==false)   //checks the value of textfiled if it is 0 or filled
		{
		alert("password required");
		document.getElementById("password1").focus();
		return false; //returns false and stops empty form from submitting
		}
		else
		return true;
		}

</script>
<style>
form.login-form
{
			margin-top:35px;
			width:450px;
			height:300px;
			margin-left:auto;
			margin-right:auto;
			border:1px solid  grey;
    		border-radius:3%;
    		padding:1%;
    		margin-bottom:60px;
}
.sidebar {
  margin: 0;
  margin-top:-40px;
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
<script type="text/javascript">
function validate0()
{
	var e1= /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])([a-zA-Z0-9 ]*).{6,10}$/
// var e1 = /^[0-9a-zA-Z]*$/;
 var sp1 = document.getElementById("Staffid1");
 if(document.staf.Staffid.value=="")
 {
	alert("Staff Id is required!");
	//sp1.innerHTML = "User Id is required!";
	return false;
 }
 else if(e1.test(document.staf.Staffid.value)==false)
 {
	alert("Anyone letter should be in uppercase and numbers must be included in userid!");
	// sp1.innerHTML = "Only alphanumeric values are required!";
	 return false;
 }
 else
 {
	 //alert("OK");
	 sp1.innerHTML="Ok";
 }
 return false;
}
 </script>
 <script type="text/javascript">
 function validate1()
{
 var e2 = /^[a-zA-Z ]*$/;
 var sp2 = document.getElementById("name1");
 if(document.staf.name.value=="")
 {
	alert("Name is required");
	 //sp2.innerHTML = "User Name is required!";
	return false;
 }
 else if(e2.test(document.staf.name.value)==false)
 {
	 alert("Only alphabets are applicable in name");
	 //sp2.innerHTML = "Only alphabets are applicable!";
	 return false;
 }
 else
 {
	 sp2.innerHTML="Ok";
 }
 return false;
}
 </script>
 <script type="text/javascript">
 function validate2()
 {
	 var e3 = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[@#$%^&])([a-zA-Z0-9 ]*).{6,10}$/;
 var sp3 = document.getElementById("password1");
 if(document.staf.password.value=="")
 {
	alert("password is required");
	// sp3.innerHTML = "Password is required!";
	return false;
 }
 else if(e3.test(document.staf.password.value)==false)
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
function validate3()
{
 var e4 = /^([0-9]*).{10,10}$/;
 var sp4 = document.getElementById("phnnumb1");
 if(document.staf.phnnumb.value=="")
 {
		alert("Contact number is required ");
	//sp4.innerHTML = "Contact No. is required!";
	return false;
 }
 else if(e4.test(document.staf.phnnumb.value)==false)
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
 if(document.staf.email.value=="")
 {
	alert("Email id is required");
	// sp5.innerHTML = "Email id is required!";
	return false;
 }
 else if(e5.test(document.staf.email.value)==false)
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
 if(document.staf.pin.value=="")
	 {
	alert("pincode is required");
	// sp6.innerHTML = "Email id is required!";
	 return false;
	 }
 else if(e6.test(document.staf.pin.value)==false)
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
<script type="text/javascript">
function validateForm1()
{
 var e7 = /^[a-zA-Z ]*$/;
 var sp7 = document.getElementById("dobs1");
 if(document.staf.dobs.value=="")
 {
	alert("Date of Birth is required");
	 //sp7.innerHTML = "User Name is required!";
	return false;
 }
 else if(e7.test(document.staf.dobs.value)==false)
 {
	 alert("enter a valid date");
	 //sp7.innerHTML = "Only alphabets are applicable!";
	 return false;
 }
 
 else
 {
	 sp7.innerHTML="Ok";
 }
 return false;
}
</script>
<script>
function showcity(ct)
{
	if(ct=="others")
     {
		document.getElementById("txtcity").style.display="block";//show
     }
	else
		{
		document.getElementById("txtcity").style.display="none";//hide
		}
}
function checkUserId(ui)
{
	if(XMLHttpRequest)
		{
		x=new XMLHttpRequest();
		}
	else
		{
		x=new ActiveXObject("Microsoft.XMLHTTP");
		}
	x.onReadystatechange=function()
	{
		if(x.readyState==4 && x.status==200)
			{
			var info=x.responseText();
			document.getElementById("msg").innerHTML="<font color='blue'>"+info+"</font>";
			
			}
		
	}
	x.open("GET","/logistics/Registration?Staff_id="+ui,"true");
	
	x.send();
	}
</script>
<style>
h1 {
	color: black;
	size: 20px;
	font-family:Monotype Corsiva;
	text-decoration:inherit;
	text-align: center;
}

input.fmt {
	
	border-radius:5px;
	color:#332221;

}
</style>
<style>
/* Full-width input fields */
input[type=text], input[type=password],  input[type=number]{
  width: 100%;
  padding: 6px 6px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button.login {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
 	width:50%;
}

button.popup-log
{
 background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}
button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
  class:btn btn-danger;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 35%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

</style>
</head>
<body background="/logistics/images/hu.jpg">
 <div class="sidebar">
  <a class="active" href="/logistics/jsp/HomePage.jsp">Home</a>
  <a  class="login" onclick="document.getElementById('id01').style.display='block'" style="width:auto;" >Login</a>
  <a href="/logistics/jsp/contacts.jsp">Contact</a>
  <a href="/logistics/jsp/AboutUs.jsp">About</a>
</div>	

	<Form method="post" class="login-form" name="staf" action="/logistics/InsertRegister">
<div class="form-floating mb-3" >
<input type="text" class="form-control" name="Staffid"id="Staffid1" placeholder="Enter userid" required="required" onblur="return validate0()" onmousedown="checkUserId(this.value)">
 <label for="floatingInput">Staff id</label>
 </div>
 <h4 id="msg">  </h4>
 <div class="form-floating mb-3">
<input type="password" class="form-control" name="password" id="password1" placeholder="Enter password" required="required" onchange="return validate2()"></td></tr>
<label for="floatingInput">Password</label>
</div>
<div class="form-floating mb-3">
	<select class="form-select" name="urole" id="urole">
		<option value="Delivery boy">Delivery boy</option></select>
 			<label for="floatingSelect">Select your designation</label>
 </div>
<div class="form-floating mb-3">
<input type="text" class="form-control" name="name" id="name1" placeholder="Enter name" required="required" onchange="return validate1()">
<label for="floatingInput">Name</label>
</div>
<div class="form-floating mb-3">
<textArea rows=10 cols=20 class="form-control" id="addr" name="addr"></textArea>
<label for="floatingTextarea">Address</label>
</div>
<div class="form-floating mb-3">
<Select class="form-select" name="city" id="city" onchange="showcity(this.value)">
						<option value="Lucknow">Lucknow</option>
						<option value="Kanpur">Kanpur</option>
						<option value="Banda">Banda</option>
						<option value="Gorakhpur">Gorakhpur</option>
						<option value="Mankapur">Mankapur</option>
						<option value="Allahabad">Allahabad</option>
						<option value="Others">Others</option>
				</Select> <input type="text" id="txtcity" style="display: none">
		<label for="floatingSelect">City</label>		
</div>
<div class="form-floating mb-3">
<input type="number" class="form-control" id="pin1" name="pin" placeholder="pincode" required="required" onblur="validateForm0()">
<label for="floatingInput">Pincode</label>
</div>
<div class="form-floating mb-3">
<input type="text" class="form-control" id="email1" name="email" placeholder="abc@xyz.com" required="required" onchange="return validate5()">
<label for="floatingInput">Email Id</label>
</div>
<div class="form-floating mb-3">
<input type="number" class="form-control" name="phnnumb" id="phnnumb1" placeholder="mobile no" required="required" onchange="return validate3()">
<label for="floatingInput">Mobile no</label>
</div>
<div class="form-floating mb-3">
<input type="date" name="dobs" id="dobs1" class="form-control" placeholder="yyyy-mm-dd" required="required" onchange="validateForm1()">
<label for="floatingInput">Date of birth</label>
</div>
				<div class="form-floating mb-3">
				<Select class="form-select" id="state" name="state">
				<option value="Uttar Pradesh">Uttar Pradesh</option>
				<option value="Madhya Pradesh">Madhya Pradesh</option>
				<option value="Andhra Pradesh">Andhra Pradesh</option>
				<option value="Arunachal Pradesh">Arunachal Pradesh</option>
				<option value="Assam">Assam</option>
				<option value="West Bengal">West Bengal</option>
				<option value="Maharashtra">Maharashtra</option>
				<option value="Kerala">Kerala</option>
				<option value="Karnataka">Karnataka</option>
				<option value="Tamil Nadu">Tamil Nadu</option>
				<option value="Gujarat">Gujarat</option>
				<option value="Rajasthan">Rajasthan</option>
				<option value="Mizoram">Mizoram</option>
				<option value="Bihar">Bihar</option>
				<option value="Chattisgarh">Chattisgarh</option>
				<option value="Delhi">Delhi</option>
				<option value="Goa">Goa</option>
				<option value="Nagaland">Nagaland</option>
				<option value="Meghalaya">Meghalaya</option>
				<option value="Punjab">Punjab</option>
				<option value="Sikkim">Sikkim</option>
				<option value="Tripura">Tripura</option>
				<option value="Uttarakhand">Uttarakhand</option>
				<option value="Jharkhand">Jharkhand</option>
				<option value="Himachal Pradesh">Himachal Pradesh</option>
			<option value="Manipur">Manipur</option>
			<option value="Haryana">Haryana</option>
			</Select>
					<label for="floatingSelect">State</label>		
</div>
<div class="form-floating mb-3">
<Select class="form-select" name="country" id="country"><option value="India">India</Select>
</div>
<div class="form-floating mb-3">
<button class="btn btn-success" type="submit">submit</button>
<button class="btn btn-danger" type="reset">reset</button>
	</div>	
	</Form>
	
  <div id="id01" class="modal">
  
  <form class="modal-content animate"method="post" "post" action="/logistics/Staffcheck"  onsubmit="return checkMain()">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="/logistics/images/img_avatar2.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
    
      <label for="userid"><b>Staff id</b></label>
      <input type="text" placeholder="Enter staff id" name="Staffid" id="Staffid1" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" id="password1" required>
      <label for="des"><b>Designation</b></label>
<select class="form-select" name="urole" id="urole">
				<option value="Delivery boy">Delivery boy</option>
				<option value="General Manager">General Manager</option></select>
      <button type="submit" class="popup-log">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>
<%String ms=request.getParameter("msg");
if(ms!=null)
{%>
<h4 style="color:black"></h4>
<%=ms %>
<%} %>  
<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
</body>
</html>
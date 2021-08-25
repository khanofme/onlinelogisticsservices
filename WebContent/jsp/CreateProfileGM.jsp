<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CreateProfileGM</title>
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
			document.getElementById("msg").innerHTML="<font color='red'>"+info+"</font>";
			}
	}
	x.open("GET","/logistics/Registration?userid="+ui,"true");
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
	border-style: hidden;
	border-radius:5px;
	color:white;
	background-image: url("/logistics/images/Desert.jpg")
}
</style>

</head>
<body>
 	<a href="/logistics/html/HomePage.html">home</a>
	<H1><b>OLS Welcomes You On The Registration Page</b></H1>
	<Form method="post" action="/logistics/InsertRegister">
		<table style="width: 200px; height: 200px" align="center"cellspacing="8">
			<tr><th><label>userID:</label></th>
				<td><input type="text" class="fmt" name="Staffid"id="Staffid" placeholder="Enter userid" required="required" onblur="checkUserId(this.value)">
					<h4 id="msg">  </h4></td></tr>
			<tr>
				<th><label>Password:</label></th>
				<td><input type="password" class="fmt" name="password"
					id="password" placeholder="Enter password" required="required"></td>
			</tr>
			<tr><th><label>Designation:</label></th>
			<td><select name="urole" id="urole">
				
				<option value="delivery boy">Delivery boy</option>
				<option value="general manager">General Manager</option>
				</select></td>
			</tr>
			<tr>
				<th><label>Name:</label></th>
				<td><input type="text" class="fmt" name="name" id="name"
					placeholder="Enter name" required="required"></td>
			</tr>
			<tr>
				<th><label>Gender:</label></th>
				<td><input type="radio" class="fmt" name="gender" value="m" id="mgender"
					checked>male <input type="radio" name="gender" value="f" id="fgender">female</td>
			</tr>
			<tr>
				<th><label>Address:</label></th>
				<td><textArea rows=10 cols=20 class="fmt" id="addr"
						name="addr"></textArea>
			</tr>
			<tr>
				<th><label>City:</label></th>
				<td><Select name="city" id="city"
					onchange="showcity(this.value)"><option value="default">Select
							your city
						<option value="lko">Lucknow</option>
						<option value="knp">Kanpur</option>
						<option value="bnd">Banda</option>
						<option value="grp">Gorakhpur</option>
						<option value="mkp">Mankapur</option>
						<option value="alb">Allahabad</option>
						<option value="others">Others</option>
				</Select> <input type="text" id="txtcity" style="display: none"></td>
			</tr>
			<tr>
				<th><label>State:</label></th>
				<td><Select id="state" name="state">
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
			</Select></td></tr>
			<tr>
				<th><label>Country:</label></th>
				<td><input type="text" class="fmt" id="country" name="country"
					placeholder="country" required="required"></td>
			</tr>
			<tr>
				<th><label>Pincode:</label></th>
				<td><input type="number" class="fmt" id="pin" name="pin"
					placeholder="pincode" required="required"></td>
			</tr>
			<tr>
				<th><label>EmailID:</label></th>
				<td><input type="text" class="fmt" id="email" name="email"
					placeholder="abc@xyz.com" required="required"></td>
			</tr>
			<tr>
				<th><label>Mobile Number:</label></th>
				<td><input type="number" class="fmt" name="phnnumb" id="phnnumb"
					placeholder="0000000000" required="required"></td></tr>
			<tr><th><label>Date of birth:</label></th>
				<td><input type="text" name="dobs" id="dobs" class="fmt" placeholder="yyyy-mm-dd" required="required"></td></tr>
			<tr>
				<td colspan=2 align="center">
					<button type="submit">submit</button>
			<tr>
				<td colspan=2 align="center">
					<button type="reset">reset</button>
				</td>
			</tr>
		</table>
	</Form>
</body>
</html>
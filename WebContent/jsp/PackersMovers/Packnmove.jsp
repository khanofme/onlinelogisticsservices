<%@ page language="java" import="java.util.Random;" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PackersMovers</title>
<script>
function showmode(rt)
{
		if(rt=="housemov")
	
     {
		document.getElementsById("cmbapart").style.display="block";//show
     }
	
		else
		{
		document.getElementById("cmbapart").style.display="none";//hide
		}
	{if(rt=="Officemov")
	     {
			document.getElementById("cmbroom").style.display="block";
		
	     }
		else
			{
			document.getElementById("cmbroom").style.display="none";//hide
		
			}}
}

function showapart(rm)
{
	if(rm=="others")
     {
		document.getElementById("txtroom").style.display="block";//show
     }
	else
		{
		document.getElementById("txtroom").style.display="none";//hide
		}
}

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
</script>
<style>
div.bg {
	border-radius: 10px;
	border-style: groove;
	border-color: black;
	font-size: 18px;
	align:center;
	}
</style>
</head>
<body background="/logistics/images/regi.jpg">
<a href="/logistics/html/HomePage.html">Go back</a>
<div style="color:black;font-family:Monotype Corsiva;font-size:20px;width:70%;height:15%;margin-bottom:10px;text-align:center">
<H1><b>Kindly fill your packing & moving details...</b></H1>
</div>
<hr>
<Form method="post" action="/logistics/jsp/insertpack.jsp">



<h3 align="center"><b>Information about commodities:</b></h3>
<div class="bg" style="width: 40%; height:100px; font-family:Sans Serif" align="justify">
<div id="move">
<%!Random rd;
int moveid;
String mid;
%>
<%rd=new Random();
moveid=rd.nextInt(Integer.MAX_VALUE);
mid="mov"+moveid;
%>
<table align="center">
<tr><th><label>Order id:</label></th>
<td><input type="text" name="movid" id="movid" value="<%=mid%>"></td></tr>
</table>
</div>
<table align="center">
<tr><th>Select mode:</th>
<td><Select name="mode" id="mode" onchange="showmode(this.value)"><option value="housemov">Houehold</option>
<option value="Officemov">Officemove</option></Select>
<tr><th>Type of house:</th>
<td><Select name="cmbapart" id="cmbapart"><option value="default">1 BHK</option>
						<option value="cmb2">2 BHK</option>
						<option value="cmb3">3 BHK</option>
						<option value="cmb4">4 BHK</option>
						</Select></td></tr>

<tr><td><Select name="cmbroom" id="cmbroom" style="display:none"><option value="default">1 room</option>
						<option value="rm1">2 room</option>
						<option value="rm3">3 room</option>
						<option value="rm4">4 room</option>
						</Select></td></tr>
</table>

</div>
 <h3 align="center"><b>Pickup details:</b></h3>
 <div class="bg" style="width: 40%; height:220px; font-family: Sans Serif">
<table align="center"> 
<tr><th><label>Pickup Address:</label></th>
<td><textarea rows="6" cols="20" name="pickaddr1" id="pickaddr1"></textarea></td></tr>
<tr><th><label>City:</label></th>
<td><Select name="cmbpcity1" id="cmbpcity1" onchange="showcity(this.value)"><option value="default">Select your city
						<option value="lko">Lucknow</option>
						<option value="knp">Kanpur</option>
						<option value="bnd">Banda</option>
						<option value="grp">Gorakhpur</option>
						<option value="mkp">Faizabad</option>
						<option value="alb">Allahabad</option>
						<option value="others">Others</option>
				</Select> <input type="text" id="txtcity" style="display: none"></td></tr>

<tr><th><label>Pincode:</label></th>
<td><input type="number" class="fmt" id="pickpin1" name="pickpin1" placeholder="pincode" required="required"></td></tr>
<tr><th><label>Mobile Number:</label></th>
<td><input type="number" class="fmt" name="picknum1" id="picknum1"  placeholder="0000000000" required="required"></td></tr>
</table>
</div>						
<b><h3 align="center">Delivery details:</h3></b>
<div class="bg" style="width: 40%; height:200px; font-family:Sans Serif">
<table align="center">
<tr><th><label>Delivery Address:</label></th>
<td><textarea rows="6" cols="20" name="deladdr1" id="deladdr1"></textarea></td></tr>
<tr><th><label>City:</label></th>
<td><Select name="cmbdcity1" id="cmbdcity1" onchange="showcity(this.value)"><option value="default">Select your city
						<option value="lko">Lucknow</option>
						<option value="knp">Kanpur</option>
						<option value="bnd">Banda</option>
						<option value="grp">Gorakhpur</option>
						<option value="mkp">Mankapur</option>
						<option value="alb">Allahabad</option>
						<option value="others">Others</option>
				</Select> <input type="text" id="txtcity" style="display: none"></td></tr>

<tr><th><label>Pincode:</label></th>
<td><input type="number" class="fmt" id="delpin1" name="delpin1" placeholder="pincode" required="required"></td></tr>
<tr><th><label>Mobile Number:</label></th>
<td><input type="number" class="fmt" name="delnum1" id="delnum1"  placeholder="0000000000" required="required"></td></tr>
</table>
</div>
<h3 align="center"><b>Your details:</b></h3>
 <div class="bg" style="width: 40%; height:130px; font-family: Sans Serif">
<table align="center">
<tr><th><label>Name:</label></th>
<td><input type="text" name="urname1" id="urname1" class="fmt" placeholder="enter your name" required="required"></td></tr>
<tr><th><label>EmailID:</label></th>
<td><input type="text" class="fmt" id="uremail1" name="uremail1"placeholder="enter your emailid" required="required"></td></tr>
<tr><th><label>Mobile Number:</label></th>
<td><input type="number" class="fmt" id="urnum1" name="urnum1"placeholder="00000000000" required="required"></td></tr>
<tr><th><label>State:</label></th>
<td><Select name="delstate1" id="delstate1"><option value="default">Uttar Pradesh</Select></td></tr>
<tr><th><label>Country:</label></th>
<td><Select name="urcountry1" id="urcountry1"><option value="default">India</Select></td></tr>
</table>
</div>
<button type="submit">submit</button>
<button type="reset">reset</button>
</div>
</Form>
</body>
</html>




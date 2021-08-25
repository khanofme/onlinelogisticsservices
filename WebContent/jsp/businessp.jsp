<%@ page language="java" import="java.util.Random" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business purpose</title>
<script type="text/javascript">
function validateForm()
{
 var e1 = /^[a-zA-Z ]*$/;
 var sp1 = document.getElementById("comm");
 if(document.busi.commtype.value=="")
 {
	 alert("commodity is required");
	//sp1.innerHTML = "User Name is required!";
	return false;
 }
 else if(e1.test(document.busi.commtype.value)==false)
 {
	 alert("only alphabets are applicable");
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
function validateForm0()
{ 
 var e2 = /^([0-9]*).{10,10}$/;
 var sp2 = document.getElementById("quantity1");
 if(document.busi.quantity.value=="")
 {
	alert("Quantity is required!");
	sp2.innerHTML = "Quantity is required!";
	return false;
 }
 else if(e2.test(document.busi.quantity.value)==false)
 {
	 alert("only numbers is applicable in quantity");
	// sp2.innerHTML = "only numbers is applicable in quantity";
	 return false;
 }
 else
 {
	 sp2.innerHTML="Ok";
 }
 return false;
</script>
<script type="text/javascript">
function validateForm1()
{
 var e3 = /^([0-9]*).{3,3}$/;
 var sp3 = document.getElementById("dist1");
 if(document.busi.dist.value=="")
 {
	 alert("distance is required");
	//sp3.innerHTML = "Contact No. is required!";
	return false;
 }
 else if(e3.test(document.busi.dist.value)==false)
 {
	 alert("only numbers are applicable in distance");
	// sp3.innerHTML = "Only 10 digits!";
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
function validateForm2()
{
 var e4 = /^([0-9]*).{6,6}$/;
 var sp4 = document.getElementById("pickpin1");
 if(document.busi.pickpin.value=="")
 {
	 alert("Picking pincode is required");
	//sp3.innerHTML = "Contact No. is required!";
	return false;
 }
 else if(e4.test(document.busi.pickpin.value)==false)
 {
	 alert("only numbers are applicable in picking pincode and of 6 digits");
	// sp3.innerHTML = "Only 10 digits!";
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
function validateForm3()
{
 var e5 = /^([0-9]*).{10,10}$/;
 var sp45 = document.getElementById("picknum1");
 if(document.busi.picknum.value=="")
 {
	 alert("Picking phone number is required");
	//sp4.innerHTML = "Contact No. is required!";
	return false;
 }
 else if(e5.test(document.busi.picknum.value)==false)
 {
	 alert("only numbers are applicable in picking phone number and of 10 digits");
	// sp4.innerHTML = "Only 10 digits!";
	 return false;
 }
 else
 {
	 sp5.innerHTML="Ok";
 }
return false;
 }
 </script>
 <script type="text/javascript">
function validateForm4()
{
	 var e6 = /^[a-zA-Z ]*$/;
 var sp6 = document.getElementById("recname1");
 if(document.busi.recname.value=="")
 {
	 alert(" receiver name is required");
	//sp5.innerHTML = "Contact No. is required!";
	return false;
 }
 else if(e6.test(document.busi.recname.value)==false)
 {
	 alert("only alphabets are applicable in receiver's name");
	// sp4.innerHTML = "Only 10 digits!";
	 return false;
 }
 else
 {
	 sp6.innerHTML="Ok";
 }
return false;
 }
 </script>
  <script type="text/javascript">
function validateForm5()
{
 var e7 = /^([0-9]*).{6,6}$/;
 var sp7 = document.getElementById("delpin1");
 if(document.busi.delpin.value=="")
 {
	 alert("Delivery pincode is required");
	//sp3.innerHTML = "Contact No. is required!";
	return false;
 }
 else if(e7.test(document.busi.delpin.value)==false)
 {
	 alert("only numbers are applicable in delivery pincode and of 6 digits");
	// sp3.innerHTML = "Only 10 digits!";
	 return false;
 }
 else
 {
	 sp7.innerHTML="Ok";
 }
return false;
 }
 </script>
 <script type="text/javascript">
 function validateForm6()
{
 var e8 = /^([0-9]*).{10,10}$/;
 var sp8 = document.getElementById("delnum1");
 if(document.busi.delnum.value=="")
 {
	 alert("Delivery phone number is required");
	//sp3.innerHTML = "Contact No. is required!";
	return false;
 }
 else if(e8.test(document.busi.delnum.value)==false)
 {
	 alert("only numbers are applicable in delivery phone number and of 10 digits");
	// sp3.innerHTML = "Only 10 digits!";
	 return false;
 }
 else
 {
	 sp8.innerHTML="Ok";
 }
return false;
 }
 </script>
 <script type="text/javascript">
 function validateForm7()
{
 var e9 = /^[a-zA-Z ]*$/;
 var sp9 = document.getElementById("urname1");
 if(document.busi.urname.value=="")
 {
	 alert("User name is required");
	//sp3.innerHTML = "Contact No. is required!";
	return false;
 }
 else if(e9.test(document.busi.urname.value)==false)
 {
	 alert("only alphabets are applicable in user name");
	// sp3.innerHTML = "Only 10 digits!";
	 return false;
 }
 else
 {
	 sp9.innerHTML="Ok";
 }
return false;
 }
 </script>
 <script type="text/javascript">
 function validateForm8()
 {
	 var e10 =/^([_A-Za-z0-9-]*)+(\.[_A-Za-z0-9-]+)*@([A-Za-z0-9-]+\.)+([A-Za-z]{2,3})$/;
	 var sp10 = document.getElementById("uremail1");
	 if(document.busi.uremail.value=="")
	 {
		 alert("User emailid is required");
		//sp3.innerHTML = "Contact No. is required!";
		return false;
	 }
	 else if(e10.test(document.busi.uremail.value)==false)
		 {
		 alert("Please input valid email Id. eg. abc@gmail.com");
		// sp3.innerHTML = "Only 10 digits!";
		 return false;
	 }
	 else
	 {
		 sp10.innerHTML="Ok";
	 }
	return false;
	 }
 }
 </script>
 <script type="text/javascript">
 function validateForm9()
{
 var e11 = /^([0-9]*).{10,10}$/;
 var sp11 = document.getElementById("urnum1");
 if(document.busi.urnum.value=="")
 {
	 alert("your phone number is required");
	//sp3.innerHTML = "Contact No. is required!";
	return false;
 }
 else if(e11.test(document.busi.urnum.value)==false)
 {
	 alert("only numbers are applicable in your phone number and of 10 digits");
	// sp3.innerHTML = "Only 10 digits!";
	 return false;
 }
 else
 {
	 sp11.innerHTML="Ok";
 }
return false;
 }
 </script>
<style>
div.bg {
	border-radius: 10px;
	border-style: groove;
	border-color: black;
	font-size: 18px;
	}
</style>
</head>
<body background="/logistics/images/regi.jpg">
<%HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("usr");
if(ui==null||hs.isNew())
{
	response.sendRedirect("/logistics/jsp/HomePage.jsp?msg=Unauthorized Access");
}
else
{%>
<a href="/logistics/jsp/purpose.jsp">
<img src="/logistics/images/back1.png" width="80" height="80" border="0">
</a>
<div style="color:black;font-family:Monotype Corsiva;font-size:20px;width:70%;height:35%;margin-bottom:10px;text-align:center">
<H1><b>Kindly fill your transport service details...</b></H1>
</div>
<hr>
<Form method="post" name="busi" action="/logistics/jsp/addbusiness.jsp" >

<div class="bg" style="widhth:40%; height:1000px" align="center">

<h3 align="center"><b>Information about commodity:</b></h3>
<div class="bg" style="width: 60%; height:200px; font-family:Sans Serif;">
<div id="order">
<%!Random rd;
int ordid;
String oid;
%>
<%rd=new Random();
ordid=rd.nextInt(Integer.MAX_VALUE);
oid="OD"+ordid;
%>

<table align="center">
<tr><th><label>Order id:</label></th>
<td><input type="text" name="orderid" id="orderid" readonly value="<%=oid%>"></td></tr>
</table>
</div>
<table align="center">
<tr><th><label>What is the commodity:</label></th>
<td><input type="text" name="commtype"id="comm" placeholder="Enter commodity name" required="required" onblur="return validateForm()"></td></tr>
<tr><th><label>Is it a sack or carton?</label></th>
<td><Select name="cmbbox" id="cmbbox"><option value="sack">Sack</option>
						<option value="carton">Carton</option>
						</Select></td></tr>
<tr><th><label>How many cartons or sacks:</label></th>
<td><input type="text" name="quantity" id="quantity1" placeholder="Enter quantity" required="required" onblur="return validateForm0()"></td></tr>
<tr><th><label>Carton size:</label></th>
<td><Select name="cartsize" id="cartsize"><option value="small">Small</option>
						<option value="big">Big</option>
						</Select></td></tr>
<tr><th><label>What is the dead weight(in kg)?</label></th>
<td><Select name="txtweigh" id="txtweigh"><option value="20">20-25</option>
						<option value="30">Above 25</option>
						</Select></td></tr>
<tr><th><label>Distance between pick and deliver address:</label></th>
<td><input type="text" name="dist" id="dist1" placeholder="Enter distance" required="required" onblur="return validateForm1()" ></td></tr>
Kindly fill the distance carefully....it decides your bill.
</table>
</div>
 <h3 align="center"><b>Pickup details:</b></h3>
 <div class="bg" style="width: 40%; height:200px; font-family: Sans Serif">
<table align="center"> 
<tr><th><label>Pickup Address:</label></th>
<td><textarea rows="6" cols="20" name="pickaddr" id="pickaddr"></textarea></td></tr>
<tr><th><label>City:</label></th>
<td><Select name="cmbpcity" id="cmbpcity"><option value="default">Select your city
						<option value="lko">Lucknow</option>
						<option value="knp">Kanpur</option>
						<option value="bnd">Banda</option>
						<option value="grp">Gorakhpur</option>
						<option value="mkp">Faizabad</option>
						<option value="alb">Allahabad</option>
<tr><th><label>Pincode:</label></th>
<td><input type="number" class="fmt" id="pickpin1" name="pickpin" placeholder="enter pincode" required="required" onblur="return validateForm2()"></td></tr>
<tr><th><label>Mobile Number:</label></th>
<td><input type="number" class="fmt" name="picknum" id="picknum1" required="required" placeholder="0000000000" onblur="return validateForm3()"></td></tr>
</table>
</div>
<b><h3 align="center">Delivery details:</h3></b>
<div class="bg" style="width: 40%; height:200px; font-family:Sans Serif">
<table align="center">
<tr><th><label>Name of the reciever:</label></th>
<td><input type="text" name="recname" id="recname1" class="fmt" placeholder="enter your name" required="required" onblur="return validateForm4()"></td></tr>
<tr><th><label>Delivery Address:</label></th>
<td><textarea rows="6" cols="20" name="deladdr" id="deladdr"></textarea></td></tr>
<tr><th><label>City:</label></th>
<td><Select name="cmbdcity" id="cmbdcity" onchange="showcity(this.value)"><option value="default">Select your city
						<option value="lko">Lucknow</option>
						<option value="knp">Kanpur</option>
						<option value="bnd">Banda</option>
						<option value="grp">Gorakhpur</option>
						<option value="mkp">Mankapur</option>
						<option value="alb">Allahabad</option>
						<option value="others">Others</option>
				</Select> <input type="text" id="txtcity" style="display: none"></td></tr>

<tr><th><label>Pincode:</label></th>
<td><input type="number" class="fmt" id="delpin1" name="delpin" placeholder="pincode" required="required" onblur="return validateForm5()"></td></tr>
<tr><th><label>Mobile Number:</label></th>
<td><input type="number" class="fmt" name="delnum" id="delnum1"  placeholder="0000000000" required="required" onblur="return validateForm6()"></td></tr>
</table>
</div>
<h3 align="center"><b>Your details:</b></h3>
 <div class="bg" style="width: 40%; height:130px; font-family: Sans Serif">
<table align="center">
<tr><th><label>Name:</label></th>
<td><input type="text" name="urname" id="urname1" class="fmt" placeholder="enter your name" required="required" onblur="return validateForm7()"></td></tr>
<tr><th><label>EmailID:</label></th>
<td><input type="text" class="fmt" id="uremail1" name="uremail"placeholder="enter your emailid" required="required" onblur="return validateForm8()"></td></tr>
<tr><th><label>Mobile Number:</label></th>
<td><input type="number" class="fmt" id="urnum1" name="urnum"placeholder="00000000000" required="required" onblur="return validateForm9()"></td></tr>
<tr><th><label>State:</label></th>
<td><Select name="urstate" id="urstate"><option value="Uttar Pradesh">Uttar Pradesh</Select></td></tr>
<tr><th><label>Country:</label></th>
<td><Select name="urcountry" id="urcountry"><option value="India">India</Select></td></tr>
</table>
</div>
<button type="submit">submit</button>
<button type="reset">reset</button>
</div>
</Form>
<%} %>
</body>
</html>


















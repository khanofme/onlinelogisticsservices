<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add truck</title>
<script type="text/javascript">
function validate()
{
	var e1= /^(?=.*[A-Z])(?=.*[A-Z])(?=.*[0-9])([A-Z0-9 ]*).{8,10}$/;
// var e1 = /^[0-9a-zA-Z]*$/;
 var sp1 = document.getElementById("txttruck");
 if(document.tri.txttruck1.value=="")
 {
	alert("Truck number is required!");
	//sp1.innerHTML = "User Id is required!";
	return false;
 }
 else if(e1.test(document.tri.txttruck1.value)==false)
 {
	alert("Enter a valid truck number");
	// sp1.innerHTML = "Only alphanumeric values are required!";
	 return false;
 }
 else
 {
	 //alert("OK");
	 sp1.innerHTML="Ok";
 }
 //////////////////////
  var e2 = /^[a-zA-Z ]*$/;
 var sp2 = document.getElementById("trucknm1");
 if(document.tri.trucknm.value=="")
 {
	alert("Truck Name is required");
	 //sp2.innerHTML = "User Name is required!";
	return false;
 }
 else if(e2.test(document.tri.trucknm.value)==false)
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
</head>
<body>
<form method="post" action="/logistics/jsp/insertTruck.jsp" name="tri" onsubmit="return validate()">
<font face="Arial"><h2>Add a new truck!!</h2></font>
<div class="form-floating">
  <input type="text" class="form-control" name="txttruck" id="txttruck1" required="required">
  <label for="floatingorderid">Truck no</label>
</div>
<div class="form-floating">
  <input type="text" class="form-control" id="truckname" name="truckname" required="required">
  <label for="floatingtruckid">Truck name</label>
</div>
<hr></hr>
<center><Button class="btn btn-success" type="submit">Add truck</Button>
<Button class="btn btn-danger" type="reset">Clear it</Button></center>
</form>
</body>
</html>
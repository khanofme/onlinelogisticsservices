
	 /////////////////////////

	///////////////////////
	var e10 = /^([0-9]*).{3,3}$/;
 var sp10 = document.getElementById("dist1");
 if(document.bus.dist.value=="")
 {
		alert("Distance is required ");
	//sp10.innerHTML = "Distance is required";
	return false;
 }
 else if(e10.test(document.bus.dist.value)==false)
 {
	 alert("Enter distance below 300 km");
	// sp10.innerHTML = "Enter distance below 300 km";
	 return false;
 }
 else
 {
	 sp10.innerHTML="Ok";
 }
	/////////////////////////
	var e6=/^([0-9]*).{6,6}$/;
 var sp6=document.getElementById("pickpin1");
 if(document.bus.pickpin.value=="")
	 {
	 alert("pincode is required");
	 return false;
	 }
 else if(e6.test(document.bus.pickpin.value)==false)
	 {
	 alert("Please enter a pincode of 6 digits");
	 return false;
	 }
 else
	 {
	 sp6.innerHTML="Ok";
	 }
	///////////////////////
	var e4 = /^([0-9]*).{10,10}$/;
 var sp4 = document.getElementById("picknum1");
 if(document.bus.picknum.value=="")
 {
		alert("Contact number is required ");
	//sp4.innerHTML = "Contact No. is required!";
	return false;
 }
 
 else if(e4.test(document.bus.picknum.value)==false)
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

	///////////////////////

</script>
<script>
	 function quan()
	 {
	 var e3 =/^([0-9]*).{10,10}$/;
 var sp3 = document.getElementById("quantity1");
 if(document.bus.quantity.value=="")
 {
		alert("Quantity is required");
	//sp3.innerHTML = "Quantity is required!";
	return false;
 }
 else if(e3.test(document.bus.quantity.value)==false)
 {
	 alert("Only numbers are applicable in quantity");
	// sp3.innerHTML = "only numbers are applicable in quantity";
	 return false;
 }
 else
 {
	 sp3.innerHTML="Ok";
 }
 return false;
	 }
	 </script>



/*	
	var e7=/^([0-9]*).{6,6}$/;
 var sp7=document.getElementById("delpin1");
 if(document.bus.delpin.value=="")
	 {
	 alert("pincode is required");
	 return false;
	 }
 else if(e7.test(document.bus.delpin.value)==false)
	 {
	 alert("Please enter a pincode of 6 digits");
	 return false;
	 }
 else
	 {
	 sp7.innerHTML="ok";
	 }
 //////////////////////////
 var e8 = /^([0-9]*).{10,10}$/;
 var sp8 = document.getElementById("delnum1");
 if(document.bus.delnum.value=="")
 {
		alert("Contact number is required ");
	//sp8.innerHTML = "Contact No. is required!";
	return false;
 }
 else if(e8.test(document.bus.delnum.value)==false)
 {
	 alert("Enter a 10 digit phone number");
	// sp8.innerHTML = "Only 10 digits!";
	 return false;
 }
 else
 {
	 sp8.innerHTML="Ok";
 }
//////////////////////////
	var e2 = /^[a-zA-Z ]*$/;
 var sp2 = document.getElementById("urname1");
 if(document.bus.urname.value=="")
 {
	alert("Name is required");
	 //sp2.innerHTML = "User Name is required!";
	return false;
 }
 else if(e2.test(document.bus.urname.value)==false)
 {
	 alert("Only alphabets are applicable in name");
	 //sp2.innerHTML = "Only alphabets are applicable!";
	 return false;
 }
 else
 {
	 sp2.innerHTML="Ok";
 }
 /////////////////////////////////
 var e5 =/^([_A-Za-z0-9-]*)+(\.[_A-Za-z0-9-]+)*@([A-Za-z0-9-]+\.)+([A-Za-z]{2,3})$/;
 var sp5 = document.getElementById("uremail1");
 if(document.bus.uremail.value=="")
 {
	alert("Email id is required");
	// sp5.innerHTML = "Email id is required!";
	return false;
 }
 else if(e5.test(document.bus.uremail.value)==false)
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
 ///////////////////////////////////////
 var e9 = /^([0-9]*).{10,10}$/;
 var sp9 = document.getElementById("urnum1");
 if(document.bus.urnum.value=="")
 {
		alert("Contact number is required ");
	//sp9.innerHTML = "Contact No. is required!";
	return false;
 }
 else if(e9.test(document.bus.urnum.value)==false)
 {
	 alert("Enter a 10 digit phone number");
	// sp9.innerHTML = "Only 10 digits!";
	 return false;
 }
 else
 {
	 sp9.innerHTML="Ok";

	 return false;
 }
*/

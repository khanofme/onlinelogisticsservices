<!DOCTYPE html>                                                                                                                                                                                                                                                                                                                                                                                                                
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://kit.fontawesome.com/e4d15d745a.js" crossorigin="anonymous"></script>
  
  
  <title>Viewport</title>
  <link rel="stylesheet" href="/logistics/jsp/JS/styles.css">
  <script type="text/javascript">
  function checkMain()
	{
		var ui=document.getElementById("txtuserID").value;
		var upass=document.getElementById("txtpassword").value;
		if(checkEmpty(ui)==false)   //checks the value of textfiled if it is 0 or filled
			{
			alert("userid required");
			document.getElementById("txtuserID").focus();
			return false; //returns false and stops empty form from submitting
			}
		if(checkEmpty(upass)==false)   //checks the value of textfiled if it is 0 or filled
		{
		alert("password required");
		document.getElementById("txtpassword").focus();
		return false; //returns false and stops empty form from submitting
		}
		else
		return true;
	}

</script>
<script type="text/javascript">
function validate()
{
	var e1= /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])([a-zA-Z0-9 ]*).{6,10}$/;
// var e1 = /^[0-9a-zA-Z]*$/;
 var sp1 = document.getElementById("txtuserid1");
 if(document.reg.txtuserid1.value=="")
 {
	alert("User Id is required!");
	//sp1.innerHTML = "User Id is required!";
	return false;
 }
 else if(e1.test(document.reg.txtuserid1.value)==false)
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
 //////////////////////////////////
 var e2 = /^[a-zA-Z ]*$/;
 var sp2 = document.getElementById("txtname1");
 if(document.reg.txtname1.value=="")
 {
	alert("Name is required");
	 //sp2.innerHTML = "User Name is required!";
	return false;
 }
 else if(e2.test(document.reg.txtname1.value)==false)
 {
	 alert("Only alphabets are applicable in name");
	 //sp2.innerHTML = "Only alphabets are applicable!";
	 return false;
 }
 else
 {
	 sp2.innerHTML="Ok";
 }
 ///////////////////////////////
 var e3 = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[@#$%^&])([a-zA-Z0-9 ]*).{6,10}$/;
 var sp3 = document.getElementById("txtpassword1");
 if(document.reg.txtpassword1.value=="")
 {
	alert("password is required");
	// sp3.innerHTML = "Password is required!";
	return false;
 }
 else if(e3.test(document.reg.txtpassword1.value)==false)
 {
	 alert("Use One small, Capital, digit and special symbol with atleast 6 to 10 character long in password");
	// sp3.innerHTML = "Use One small, Capital, digit and special symbol with atleast 6 to 10 character long.";
	 return false;
 }
 else
 {
	 sp3.innerHTML="Ok";
 }
 /////////////////////////
 var e4 = /^([0-9]*).{10,10}$/;
 var sp4 = document.getElementById("phnnum1");
 if(document.reg.phnnum1.value=="")
 {
		alert("Contact number is required ");
	//sp4.innerHTML = "Contact No. is required!";
	return false;
 }
 else if(e4.test(document.reg.phnnum1.value)==false)
 {
	 alert("Enter a 10 digit phone number");
	// sp4.innerHTML = "Only 10 digits!";
	 return false;
 }
 else
 {
	 sp4.innerHTML="Ok";
	 return true;
 }
 ////////////////////////
 var e5 =/^([_A-Za-z0-9-]*)+(\.[_A-Za-z0-9-]+)*@([A-Za-z0-9-]+\.)+([A-Za-z]{2,3})$/;
 var sp5 = document.getElementById("txtemailid1");
 if(document.reg.txtemailid1.value=="")
 {
	alert("Email id is required");
	// sp5.innerHTML = "Email id is required!";
	return false;
 }
 else if(e5.test(document.reg.txtemailid1.value)==false)
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
  <style>

    body {
      margin: 0;
    }



    header{
      height:8vh;
      width:100%;
      background-color:none;
    
    }
  /* For mobile phones: */
  .row::after {
  content: "";
  clear: both;
  display:table;
}
[class*="col-"] {
  width: 100%;
}
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

@media only screen and (min-width: 600px) {
  /* For tablets: */
  .col-s-1 {width: 8.33%;}
  .col-s-2 {width: 16.66%;}
  .col-s-3 {width: 25%;}
  .col-s-4 {width: 33.33%;}
  .col-s-5 {width: 41.66%;}
  .col-s-6 {width: 50%;}
  .col-s-7 {width: 58.33%;}
  .col-s-8 {width: 66.66%;}
  .col-s-9 {width: 75%;}
  .col-s-10 {width: 83.33%;}
  .col-s-11 {width: 91.66%;}
  .col-s-12 {width: 100%;}
}
@media only screen and (min-width: 768px) {
  /* For desktop: */
  .col-1 {width: 8.33%;}
  .col-2 {width: 16.66%;}
  .col-3 {width: 25%;}
  .col-4 {width: 33.33%;}
  .col-5 {width: 41.66%;}
  .col-6 {width: 50%;}
  .col-7 {width: 58.33%;}
  .col-8 {width: 66.66%;}
  .col-9 {width: 75%;}
  .col-10 {width: 83.33%;}
  .col-11 {width: 91.66%;}
  .col-12 {width: 100%;}
}
@media only screen and (min-width: 200px) {
  /* For desktop: */
  .col-1 {width: 10;}
  .col-2 {width: 10%;}
  .col-3 {width: 10%;}
  .col-4 {width: 10%;}
  .col-5 {width: 10%;}
  .col-6 {width: 10%;}
  .col-7 {width: 10%;}
  .col-8 {width: 5%;}
  .col-9 {width: 5%;}
  .col-10 {width: 5%;}
  .col-11 {width: 5%;}
  .col-12 {width: 10%;}
}

   
   
  </style>
</head>
<body>

    <header>
      <div class="branding">
      <img src="/logistics/images/logo.png" alt="logo" srcset="">
      </div>
        <nav class="nar-bar">
          <ul>
            <li><a href="#" class='services' >Services</a></li>
            <li><a href="#" class='services'>Partners</a></li>
          </ul>
        </nav>
        <div class="header-right-section">'
          <div class="icons">
              <a href="https://www.google.com/maps/place/Babu+Banarasi+Das+University/@26.8887269,81.0568117,17z/data=!3m1!4b1!4m5!3m4!1s0x399be209f58895a1:0x8328acaa3eddd4f!8m2!3d26.8887269!4d81.0590004"><i class="fas fa-adjust"></i></a>
              <a href="https://www.google.com/maps/place/Babu+Banarasi+Das+University/@26.8887269,81.0568117,17z/data=!3m1!4b1!4m5!3m4!1s0x399be209f58895a1:0x8328acaa3eddd4f!8m2!3d26.8887269!4d81.0590004"><i class="fas fa-globe"></i></a>
              
          </div>
          <div class="buttons">
              <button class='paid-courses'><a href="/logistics/jsp/Staffregister.jsp">Staff</a></button>
              <button class="login" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Register User</button>
          </div>
      </div>
    </header>
 <!--header section ends-->
 
 <!--hero unit section-->
 <!--carousel starts-->
 <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="/logistics/images/slide1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/logistics/images/slide2.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/logistics/images/slide3.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
</div>
<!--carousel ends here-->

<!--jumbotron starts-->
<div class="jumbotron">
  <h1 class="display-4">LOGISTICS</h1>
  <p class="lead">In OLS, we build trust between companies and clients. We provide service satisfaction to our customers and ease of use.</p>
  <hr class="my-4">
  <p>Now avail transport services in just a click, with a range of transport companies.</p>
  <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
</div>
<!--jumbotron ends-->
<div class="row">
<!--cards starts-->
  <div class="card-class">
    <div class="col-12 col-sm-4 order-sm-1 col-md-2">
        <div class="card" style="width: 18rem;">
          <img src="/logistics/images/card1.jpg" class="card-img-top" alt="card picture">
            <div class="card-body">
              <p class="card-text">Want to transport goods from your place to other's?.</p>
                <a href="#" class="btn btn-primary">Know more</a>
            </div>
        </div>
    </div>
        <div class="col-12 col-sm-4 order-sm-1 col-md-2">
          <div class="card" style="width: 18rem;">
            <img src="/logistics/images/card2.jpg" class="card-img-top" alt="card picture">
              <div class="card-body">
                <p class="card-text">Want your bulk of goods to be transported at your place from other city?</p>
                  <a href="#" class="btn btn-primary">Know more</a>
              </div>
          </div>
        </div>
</div> 
</div> 
<hr class="my-4">
<!--cards ends here-->
<!--hero unit sections ends here-->
<!-- login form starts here -->
<div class="login-form">
<form method="post" action="/logistics/logincheck" onsubmit="return checkMain()">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">User Id</label>
    <input type="text" class="form-control" name="txtuserID" id="txtuserID"  aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" name="txtpassword" id="txtpassword" >
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Keep me signed in</label>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
<!-- login form ends here -->
<!-- hidden registration form -->

<!-- hidden form ends -->
<!--footer starts here-->
<div class="m-t-3"></div>

<footer class="mainfooter" role="contentinfo">
  <div class="footer-top p-y-2">
    <div class="container-fluid">

    </div>
  </div>
  <div class="footer-middle">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-6">
        <!--Column1-->
        <div class="footer-pad">
          <h4>Address</h4>
          <address>
                <ul class="list-unstyled">
                  <li>
                    Hazratganj<br>
                    212  Street<br>
                    Lucknow<br>
                    226007<br>
                  </li>
                  <li>
                    Phone: 05192
                  </li>
                </ul>
              </address>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <!--Column1-->
        <div class="footer-pad">
          <h4>Popular Services</h4>
          <ul class="list-unstyled">
            <li><a href="#"></a></li>
            <li><a href="#">Payment Center</a></li>
            <li><a href="/logistics/jsp/contacts.jsp">Contact Directory</a></li>
            <li><a href="#">Forms</a></li>
            <li><a href="#">News and Updates</a></li>
            <li><a href="#">FAQs</a></li>
          </ul>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <!--Column1-->
        <div class="footer-pad">
          <h4>Website Information</h4>
          <ul class="list-unstyled">
            <li><a href="#">Pricing details</a></li>
            <li><a href="#">Accessibility</a></li>
            <li><a href="#">Disclaimer</a></li>
            <li><a href="#">Privacy Policy</a></li>
            <li><a href="#">FAQs</a></li>
            <li><a href="/logistics/jsp/AboutUs.jsp">About</a></li>
          </ul>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <!--Column1-->
        <div class="footer-pad">
          <h4>Find us at:</h4>
          <ul class="list-unstyled1">
            <li><i class="fab fa-facebook"></i></li>
            <li><i class="fab fa-twitter"></i></li>
            <li><i class="fab fa-linkedin"></i></li>
            <li><i class="fab fa-youtube"></i></li>
           
            
          </ul>
        </div>
      </div>
    </div>
  </div>
  </div>
  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <!--Footer Bottom-->
          <p class="text-xs-center">&copy; Copyright 2021 - India.  All rights reserved.</p>
        </div>
      </div>
    </div>
  </div>
</footer>
<!--footer ends here-->
<!-- hidden -->

<div id="id01" class="modal">
  
  <form class="modal-content animate"method="post" action="/logistics/Registration" name="reg" onsubmit="return validate()">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="/logistics/images/img_avatar2.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
    <label for="uname"><b>Name</b></label>
      <input type="text" placeholder="Enter name" name="txtname1" id="txtname1" required>
    
    <label for="uemailid"><b>Email id</b></label>
      <input type="text" placeholder="Enter email id" name="txtemailid1" id="txtemailid1" required>
      
      <label for="umobileno"><b>Mobile no</b></label>
      <input type="number" placeholder="Enter mobile no" name="phnnum1" id="phnnum1" required>
      
      <label for="userid"><b>Userid</b></label>
      <input type="text" placeholder="Enter User id" name="txtuserid1" id="txtuserid1" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="txtpassword1" id="txtpassword1" required>
        
      <button type="submit" class="popup-log">Register</button>
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

<!-- hidden ends -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

</body>
</html>
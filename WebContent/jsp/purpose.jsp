<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Purpose</title>
<link href="/logistics/jsp/themes/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="/logistics/jsp/themes/js-image-slider.js" type="text/javascript"></script>
    <link href="generic.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript">
        //The following script is for the group 2 navigation buttons.
        function switchAutoAdvance() {
            imageSlider.switchAuto();
            switchPlayPauseClass();
        }
        function switchPlayPauseClass() {
            var auto = document.getElementById('auto');
            var isAutoPlay = imageSlider.getAuto();
            auto.className = isAutoPlay ? "group2-Pause" : "group2-Play";
            auto.title = isAutoPlay ? "Pause" : "Play";
        }
        switchPlayPauseClass();
    </script>
    <style>
   a{
   text-decoration:none;
   color:white;
   }
   a:hover {
	color:#04AA6D;

	
}
button:hover
{
background-color:white;
color:#04AA6D;

}
    </style>
<style>
/*a:link {
	color:white;
	background-color:#04AA6D;
}

a:visited {
	color: white;
	background-color:#04AA6D;
}

a:hover {
	color: #04AA6D;
	background-color: white;
}

a:active {
	color: #04AA6D;
	background-color: white;
}
a {
	text-decoration:none;
	text-shadow: grey;
	border-radius:4px;
	
	font-family: Arial;
	
}*/

</style>
</head>

<body background="/logistics/images/purp.jpg">
<%HttpSession hs=request.getSession(false);
String ui=(String)hs.getAttribute("usr");
if(ui==null||hs.isNew())
{
	response.sendRedirect("/logistics/jsp/HomePage.jsp?msg=Unauthorized Access");
}
else
{%>
 <div style="color:black;font-family:Monotype Corsiva;font-size:50px;width:80%;height:15%;margin-bottom:10px;text-align:center">
Hello user!Kindly choose your purpose!!!
</div><hr>
 <div style="float:right;margin-top:-60px;margin-bottom:50px;text-align:center">
 <button type="submit" class="btn btn-success"><a href="/logistics/jsp/Logout.jsp">Logout</a></button>
 </div>
 
<div style="margin-left:30px;margin-top:50px">
<button type="submit" class="btn btn-success"><a href="/logistics/jsp/businessp.jsp">Business purpose</a></button>
</div>
<div style="margin-left:30px;margin-top:50px">
<button type="submit" class="btn btn-success"><a href="/logistics/jsp/CancelService.jsp">Cancel service</a></button>
</div>

<div style="margin-left:30px;margin-top:50px">
<button type="submit" class="btn btn-success"><a href="/logistics/jsp/Track.jsp">Track your service</a></button>
</div>
<div style="margin-left:30px;margin-top:50px">
<button type="submit" class="btn btn-success"><a href="/logistics/jsp/Feedback.jsp">Give your Feedback</a></button>

      
<div id="sliderFrame" style="margin-left:280px;margin-top:-295px">
        <div id="slider">
            <img src="/logistics/images/woman-on-laptop-700.jpg" />
            <img src="/logistics/images/Carton-livraison.jpg"/>
            <img src="/logistics/images/trannspo.jpg" />
            <img src="/logistics/images/731.jpg" />
            <img src="/logistics/images/order-tracking.jpg" />
        </div>
        <!--Custom navigation buttons on both sides-->
        <div class="group1-Wrapper">
            <a onclick="imageSlider.previous()" class="group1-Prev"></a>
            <a onclick="imageSlider.next()" class="group1-Next"></a>
        </div>
        <!--nav bar-->
        <div style="text-align:center;padding:20px;z-index:80;">
            <a onclick="imageSlider.previous()" class="group2-Prev"></a>
            <a id='auto' onclick="switchAutoAdvance()"></a>
            <a onclick="imageSlider.next()" class="group2-Next"></a>
        </div>
    </div>
       
<%} %>	
	
	
	
	
	
</body>
</html>
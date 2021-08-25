<%@ page language="java" import="java.util.Random;" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Business bill</title>
</head>
<body>
<center><div style="width:60%; height:25px;color:white;background-color: black;font-size:20px;font-family:Arial;text-align:center">I  N  V  O  I  C  E</div></center>
<table align="center" border="1" width="60%" height="25px">

<%! /*Random rd;
int bilid;
String bid;*/
%>
<%/*rd=new Random();
bilid=rd.nextInt(Integer.MAX_VALUE);
bid="BL"+bilid;*/
%>
<tr> 
<td>Invoice no:<input type="text" name="billno" id="billno" readonly value="<%="bid"%>"></th>
<td><%="od" %></td>
<th>COD:<input type="text" name="cod" id="cod" readonly value="<%="amount"%>"></th></tr>
<tr>
<td rowspan=2><b>Registered Office:</b>SRMCM,Faizabad road Lucknow,Uttar Pradesh,India-226016></td>
<td rowspan=2>Ph:1800 208 9898</td>
<td rowspan=2>www.OnlinelogisticsServices.com/support</td></tr>
</table>
<table align="center" border="1" width="60%" height="25px">
<tr><td rowspan=6 colspan=8>
<b>Pickup Address:</b><br>
<%="pa"%>
<%="pa"%>
<%="pp"%>
<%="st"%>
<%="pm"%></td>
<td rowspan=6 colspan=8>
<b>Delivery Address:</b><br>
<%="da"%>
<%="dc"%>
<%="dp"%>
<%="st"%>
<%="dm"%></td></tr>
</table>
<table align="center" border="2" width="60%" height="40px">
<tr><th colspan=4>Transported by:Logics co.,Faizabad road,Lucknow,Uttar Pradesh,INDIA-226017</th>
<th>VAT/TIN no: 17543657</th>
<td><b>Date:</b><%=new java.util.Date()%></td></tr>
<tr><th>Product</th>
<th>Quantity</th>
<th>Price</th>
<th>Total</th></tr>
<tr>
<td rowspan=3><%="cm "%></td>
<td rowspan=3><%="q" %></td>
<td rowspan=3>Rs.<%="amount" %></td>
<td rowspan=3>Rs.<%="amount "%></td></tr>
</table>
<table align="center" border="1" width="60%" height="25px">
<tr><th>Total</th>
<td><%="cm" %></td>
<td>Rs.<%="amount" %></td>
<td>Rs.<%="amount" %></td></tr>
<tr><th>Service through Logistics Services</th></tr>/
</table>






</table>
</body>
</html>
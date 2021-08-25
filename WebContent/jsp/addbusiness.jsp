<%@ page language="java" import="java.util.*,java.sql.*,logistics.*"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
  function doPrint() { window.print(); }
</script>
</head>
<body>

<%
float amount=0;
String od=request.getParameter("orderid");
String cm=request.getParameter("commtype");
String b=request.getParameter("cmbbox");
int q=Integer.parseInt(request.getParameter("quantity"));
String cs=request.getParameter("cartsize");
float w=Float.parseFloat(request.getParameter("txtweigh"));
int d=Integer.parseInt(request.getParameter("dist"));
String pa=request.getParameter("pickaddr");
String pc=request.getParameter("cmbpcity");
int pp=Integer.parseInt(request.getParameter("pickpin"));
long pm=Long.parseLong(request.getParameter("picknum"));
String rn=request.getParameter("recname");
String da=request.getParameter("deladdr");
String dc=request.getParameter("cmbdcity");
int dp=Integer.parseInt(request.getParameter("delpin"));
long dm=Long.parseLong(request.getParameter("delnum"));
String n=request.getParameter("urname");
String em=request.getParameter("uremail");
long mb=Long.parseLong(request.getParameter("urnum"));
String st=request.getParameter("urstate");
String ct=request.getParameter("urcountry");
Connection con=null;
con=CrudOperation.createConnection();
PreparedStatement psmt=con.prepareStatement(("insert into businessp values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"));
psmt.setString(1,od);
psmt.setString(2,cm);
psmt.setString(3,b);
psmt.setInt(4,q);
psmt.setString(5,cs);
psmt.setFloat(6,w);
psmt.setInt(7,d);
psmt.setString(8,pa);
psmt.setString(9,pc);
psmt.setInt(10,pp);
psmt.setLong(11,pm);
psmt.setString(12,rn);
psmt.setString(13,da);
psmt.setString(14,dc);
psmt.setInt(15,dp);
psmt.setLong(16,dm);
psmt.setString(17,n);
psmt.setString(18,em);
psmt.setLong(19,mb);
psmt.setString(20,st);
psmt.setString(21,ct);
psmt.setString(22,"Order Placed");

int rw=psmt.executeUpdate();

if(rw>0)
{
System.out.println("row inserted successfully");

//response.sendRedirect("/logistics/jsp/Businessbill.jsp?msg=order received successfully");
}
System.out.println(d);
System.out.println(cm);
if(b.equals("carton"))
{
	if(d<=100)
	{
		if(w<=20)
			{amount=q*25;}

		else
				{amount=q*30;}
	
	}

		else if(d>100 && d<=200)
		{
			if(w<=20)
		{amount=q*30;}

			else
		{amount=q*35;}
			
		}

			else if(d>200 && d<=300)
			{
				if(w<=20)
	 				{amount=q*35;}
			
				else
					{amount=q*40;}
		
			}

}

if(b.equals("sack"))
{
	if(d<=100)
	{
		if(w<=20)
		{amount=q*40;}

		else if(w>20)
			{amount=q*45;}
		
	}

	else if(d>100 && d<=200)
	{
		if(w<=20)
		 {amount=q*45;}
	
		else if(w>20)
			{amount=q*50;}
	
	}

	else //if(d>200 && d<=300)
	{
		if(w<=20)
		 {amount=q*50;}

		else if(w>20)
			{amount=q*55;}

	}

}
System.out.println("amount:"+amount);

%>
<a href="/logistics/jsp/purpose.jsp">
<img src="/logistics/images/back1.png" width="80" height="80" border="0">
</a>
<center><div style="width:60%; height:25px;color:white;background-color: black;font-size:20px;font-family:Arial;text-align:center">I  N  V  O  I  C  E</div></center>
<form method="post" action="/logistics/jsp/billstore.jsp">
<table align="center" border="1" width="60%" height="25px">
<tr><th>Invoice no:</th>
<%! Random rd;
int bilid;
String bid;
%>
<%rd=new Random();
bilid=rd.nextInt(Integer.MAX_VALUE);
bid="BL"+bilid;
%>
<tr> 
<td>Invoice no:<input type="text" name="billno" id="billno" readonly value="<%=bid%>"></th>
<td><%=od %></td>
<th>COD:<input type="text" name="cod" id="cod" readonly value="<%=amount%>"></th></tr>
<tr>
<td rowspan=2><b>Registered Office:</b>SRMCM,Faizabad road Lucknow,Uttar Pradesh,India-226016></td>
<td rowspan=2>Ph:1800 208 9898</td>
<td rowspan=2>www.OnlinelogisticsServices.com/support</td></tr>
</table>
<table align="center" border="1" width="60%" height="25px">
<tr><td rowspan=6 colspan=8>
<b>Pickup Address:</b><br>
<%=n %>
<%=pa%>
<%=pc%>
<%=pp%>
<%=st%>
<%=pm%></td>
<td rowspan=6 colspan=8>
<b>Delivery Address:</b><br>
<%=rn%>
<%=da%>
<%=dc%>
<%=dp%>
<%=st%>
<%=dm%></td></tr>
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
<td rowspan=3><%=cm%></td>
<td rowspan=3><%=q %></td>
<td rowspan=3>Rs.<%=amount%></td>
<td rowspan=3>Rs.<%=amount%></td></tr>
</table>
<table align="center" border="1" width="60%" height="25px">
<tr><th>Total</th>
<td><%=cm%></td>
<td>Rs.<%=amount %></td>
<td>Rs.<%=amount%></td></tr>
<tr><th>Service through Logistics Services</th></tr>
<%PreparedStatement pst=con.prepareStatement(("insert into bill(Invoice_no,Order_id,Commodity,Amount,Status) values(?,?,?,?,?)"));
pst.setString(1,bid);
pst.setString(2,od);
pst.setString(3,cm);
pst.setFloat(4,amount);
pst.setString(5,"Not Paid");
int rw1=pst.executeUpdate();

if(rw1>0)
{
System.out.println("row inserted successfully");

}

%>
</table>

<center><img src="/logistics/images/printer.png" onclick="doPrint();"></center>

</body>
</html>
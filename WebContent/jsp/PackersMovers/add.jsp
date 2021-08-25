<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="/logistics/jsp/insertitem.jsp">
<%int i;
int n=Integer.parseInt(request.getParameter("add"));
for(i=0;i<n;i++)
{%>
<h3>Write the quantity in brackets:(e.g.,Refrigerator(2))</h3>
<input type="text" name="itms" id="itms">
<%}
%> 
<input type="submit" value="submit">
</form>
</body>
</html>
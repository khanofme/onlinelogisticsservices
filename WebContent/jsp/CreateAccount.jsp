<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CreateAccount</title>
</head>
<body>
	<Form method="post" action="/ecollege/CreateAccount">
		<table style="width: 200px; height: 200px" align="center"
			cellspacing="8">
			<tr>
				<th><label>userID:</label></th>
				<td><input type="text" class="fmt" name="txtuserid"
					id="txtuserid" placeholder="Enter userid" required="required"></td>
			</tr>
			<tr>
				<th><label>password:</label></th>
				<td><input type="password" class="fmt" name="txtpass"
					id="txtpassword" placeholder="Enter password" required="required"></td>
			</tr>

			<tr>
				<th><label>designation:</label></th>
				<td><select name="urole" id="urole">
						<option value="manager">manager</option>
						<option value="student">student</option>
						<option value="faculty">faculty</option>
				</select></td>
			</tr>
			<tr>
				<th><button type="submit">submit</button></th>
			</tr>
		</table>
	</Form>
</body>
</html>
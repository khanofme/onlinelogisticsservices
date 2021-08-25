<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>
</head>
<body background="/logistics/images/feedback.png">
	<h1>PLEASE!Give your Feedback</h1>
	<Form method="post" action="/logistics/jsp/Feed.jsp">
	<div style="width:50%;margin-left:70px;">
	<div class="form-floating">
  <input type="text" class="form-control" name="txtuserID"
					id="txtuserID"  required="required">
  <label for="floatingPassword">User id</label>
</div>
<div class="form-floating">
  <textarea class="form-control" placeholder="Leave a comment here" id="txtfeedback"
						name="txtfeedback" required="required"></textarea>
  <label for="floatingTextarea">Feedback</label>
</div>
<hr></hr>
			<button class="btn btn-success" type="submit">Submit</button>
		</div>
	</Form>
</body>
</html>
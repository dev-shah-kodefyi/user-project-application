<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/umd/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<title>Welcome Admin</title>
</head>
<body>
	<div class="container">
		<h2>Welcome Admin</h2>
		<form action="" method="post">
			<div class="list-group">
				<a class="list-group-item" href="adduser">Add User</a> 
					<a class="list-group-item" href="addproject">Add Projects</a>
					<a class="list-group-item" href="viewallprojects">View All Projects</a> 
					<a class="list-group-item" href="viewallusers">View All Users</a> 
					<a class="list-group-item" href="viewbyuserid">View by User ID</a>
			</div>
		</form>
	</div>
</body>
</html>
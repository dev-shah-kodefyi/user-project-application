<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
<title>Add User</title>
</head>
<body>
	<div class="container">
		<h2>Enter User Details</h2>
		<form id="form1" action="useradded" method="post">
			<div class="form-group">
				<label for="userName">User Name : </label> <input type="text"
					class="form-control" id="name" placeholder="Enter email"
					name="name" required>
			</div>
			<div class="form-group">
				<label for="password">Password</label> <input type="password"
					class="form-control" id="password" placeholder="Enter Password"
					required>
			</div>
			<div class="form-group">
				<label for="doj">Date of Joining</label> <input type="date"
					name="doj">
			</div>
			<div class="form-group">
				<label for="doj">e-mail</label> <input type="email"
					class="form-control" id="email" placeholder="Enter e-mail"
					name="email" required>
			</div>
			<div class="form-group">
				<label for="project">Select Project : </label>
				<c:forEach var="project" items="${projects}">
					<option value="${project.projectId}">${project.projectName}</option>
				</c:forEach>
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>
</body>
</html>
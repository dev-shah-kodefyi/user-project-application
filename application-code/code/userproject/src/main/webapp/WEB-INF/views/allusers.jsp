<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Users</title>
</head>
<body>
	<h2>User Details</h2>
	<table class="table">
		<thead>
			<tr>
				<th>User ID</th>
				<th>User Name</th>
				<th>Date of Joining</th>
				<th>Role</th>
				<th>E-Mail</th>
				<th>Project ID</th>
			</tr>
		</thead>
		<c:forEach var="user" items="${users}">
		<tbody>
		<tr>
		<td>${user.userId}</td>
		<td>${user.name}</td>
		<td>${user.doj}</td>
		<td>${user.role}</td>
		<td>${user.email}</td>
		<td><a href="getProject/${user.project.projectId}">${user.project.projectId}</a></td>
		</tr>
		</tbody>
		</c:forEach>
	</table>
</body>
</html>
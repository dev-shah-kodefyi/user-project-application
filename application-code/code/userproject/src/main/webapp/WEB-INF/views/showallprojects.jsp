<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>ALL PROJECTS</h2>
	<table class="table">
		<thead>
			<tr>
				<th>PROJECT ID</th>
				<th>NAME</th>
				<th>DESCRIPTION</th>
				<th>DURATION</th>
			</tr>
		</thead>
		<c:forEach var="project" items="{projects}">
			<tbody>
				<tr>
					<td>${project.projectId}</td>
					<td>${project.projectName}</td>
					<td>${project.description}</td>
					<td>${project.duration}</td>
				</tr>
			</tbody>
		</c:forEach>
	</table>
</body>
</html>
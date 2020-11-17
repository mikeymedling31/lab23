<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grades</title>
</head>
<body>
	<h1>Grades</h1>
	
	<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Type</th>
				<th>Score</th>
				<th>Total</th>
			</tr>
		</thead>
		<tbody>
		
		<c:forEach var="grades" items="${ grades }">
				<tr>
					<td>${ grades.getName() }</td>
					<td>${ grades.getType() }</td>
					<td>${ grades.getScore() }</td>
					<td>${ grades.getTotal() }</td>
					<td><a href="/delete?id=${ grades.getId() }">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="/add">Add an Grade</a>
</body>
</html>
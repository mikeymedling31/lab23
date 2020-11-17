<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
</head>
<body>
	<h1>Grade Added</h1>
	
	The grade was added to the database.
	
	<h3>Details</h3>
	
	Name: ${ grade.getName() }<br />
	
	Type: ${ grade.getType() }<br />
	
	Score: ${ grade.getScore() }<br />
	
	Total: ${ grade.getTotal() }<br />
	
	<a href="/"> Return to grade list</a>
</body>
</html>
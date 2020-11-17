<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Grade</title>
</head>
<body>
	<h1>Add a Grade</h1>
	<form method="post" action="/add">
	
	<b>Name: </b><input type="text" name="name" /><br />
		<b>Type: </b>	
			<select name="type">
				<option>Assignment</option>
				<option>Quiz</option>
				<option>Exam</option>
			</select><br />
			
		<b>Score: </b><input type="number" min="0" max="100" name="score" /><br />
		
		
		<b>Total: </b> <input type="number" min="0" max="100" name="total" /><br />
		
		<input type="submit" value="Add"/>
		<a href="/">Cancel</a>
	</form>
</body>
</html>
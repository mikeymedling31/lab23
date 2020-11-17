<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<h1>Delete  ${ grade.getType() }?</h1>
		
		Are you sure you want to delete this grade?<br />
		${ grade.getName() }  ${ grade.getScore() }  ${ grade.getTotal() }<br /><br />
	
	<a href="/reallydelete?id=${ grade.getId() }">Yes, Delete!</a><br />
	<a href="/">No, go back to list!</a>
</body>
</html>
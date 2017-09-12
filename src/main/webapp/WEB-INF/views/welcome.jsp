<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/css/stylesheet.css" />" rel="stylesheet">
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<title>Welcome ${name}</title>
</head>
<body>

	<table>
		<tr>
			<td class="headerTitle">Welcome ${name} ${lastName}</td>
		</tr>
		<tr>
			<td class="headerTitle">${email}</td>
		</tr>
		<tr>
			<td class="headerTitle">${phoneNumber}</td>
		</tr>
		<tr>
			<td><a href="home.jsp">Home</a></td>
		</tr>
	</table>
	
	
	
</body>
</html>
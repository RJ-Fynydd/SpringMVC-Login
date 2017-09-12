<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="<c:url value="/resources/css/stylesheet.css" />" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>


	<div><h1 class="headerTitle">Spring MVC Test Login Page</h1></div>
	<form:form id="loginForm" modelAttribute="login" action="loginProcess"
		method="post">
		<table align="center" id="myTable">
			<tr>
				<td><form:label path="username">Username: </form:label></td>
				<td><form:input path="username" name="username" id="username" />
				</td>
			</tr>
			<tr>
				<td><form:label path="password">Password:</form:label></td>
				<td><form:password path="password" name="password"
						id="password" /></td>
			</tr>
			<tr>
				<td></td>
				<td align="left"><form:button id="login" name="login">Login</form:button>
				</td>
			</tr>
			<tr></tr>
			<tr>
				<td></td>
				<td><a href="home.jsp">Home</a></td>
			</tr>
		</table>
	</form:form>
	<table align="center">
		<tr>
			<td style="font-style: italic; color: red;">${message}</td>
		</tr>
	</table>
	
	<audio id="audio" src="https://overwatch.gamepedia.com/media/overwatch.gamepedia.com/6/6a/Mei_-_A-Mei-Zing.mp3"></audio>
	<button id="myButton" onclick="">Hide/Show Login</button>
	
	<!--https://www.w3schools.com/jquery/jquery_animate.asp-->
	
	
	<script type="text/javascript">
	$(document).ready(function(){
	    $("button").click(function(){
	        $("button").animate({width: '+=10px', height: '+=10px'},1000);
	        document.getElementById('audio').play();
	    });
	});
	</script>
	
</body>
</html>
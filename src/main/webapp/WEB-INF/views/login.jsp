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
				<td><form:password path="password" name="password" id="password" /></td>
			</tr>
			<tr>
				<td></td>
				<td align="center"><form:button id="login" name="login">Login</form:button>
				</td>
			</tr>
		</table>
	</form:form>
	
	
	<a href="home.jsp" style="text-align: left; font-size: 22px; font-family: sans-serif;">Home</a>
	<table align="center">
		<tr>
			<td style="font-style: italic; color: red;">${message}</td>
		</tr>
	</table>

	<!-- <button id="loginButton" style="font-size: 20pt; font-style: italic; color: red;">GG</button> -->
	<!--https://www.w3schools.com/jquery/jquery_animate.asp-->
	
	
	<script type="text/javascript">
	
	function getRandomArbitrary(min, max) {
		return Math.random() * (max - min) + min;
	}
	/*
	$(document).ready(function(){
	    $("#myButton").click(function(){
	    		if (window.HTMLAudioElement) {
	    			try {
	    				
	    				for(var i = 0; i < 1000; i++) {
	    					var randomNumber = Math.floor(Math.random() * 4000);
	    					setTimeout(function() {
	    					
	    						
	    					var snd1  = new Audio();
	    					var src1  = document.createElement("source");
	    					src1.type = "audio/mpeg";
	    					src1.src  = "https://overwatch.gamepedia.com/media/overwatch.gamepedia.com/3/38/D.Va_-_GG.ogg";
	    					snd1.appendChild(src1);

	    					snd1.play();
	    					console.log(getRandomArbitrary(0, 100));
	    					
	    					
	    					}, randomNumber);
	    					
	    				}
	    				
	    			} catch(e) {
	    				if(window.console && console.error("Error:" + e));
	    			}
	    		}
	        
	    });
	});
	*/
	</script>
	
</body>
</html>
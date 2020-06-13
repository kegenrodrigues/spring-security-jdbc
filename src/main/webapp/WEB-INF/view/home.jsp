<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title>SpringBoot Coders</title>
</head>

<body>
	Welcome to Coders!!! Have a great day guys....
	
	<!-- Display username and roles -->
	<br>
	Username: <security:authentication property = "principal.username"/>
	<br>
	User Roles: <security:authentication property = "principal.authorities"/>
	<br>
	
	<hr>
	
	<security:authorize access = "hasRole('MANAGER')">
	<!-- Add a link to point to /leaders this is for the managers-->
	<p>
		<a href = "${pageContext.request.contextPath}/leaders"> Leadership Meeting</a>
		Only for Manager folks
	</p>
	</security:authorize>
	
	<security:authorize access = "hasRole('ADMIN')">
	<!-- Add a link to point to /systems this is for the managers-->
	<p>
		<a href = "${pageContext.request.contextPath}/systems">IT systems Meeting</a>
		Only for Admin folks
	</p>

	</security:authorize>
	
	<!-- Logout -->
	<form:form action = "${pageContext.request.contextPath}/logout" method = "POST">
	
		<input type = "submit" value = "Logout"/>
	
	</form:form>
	
	
	
	
</body>

</html>
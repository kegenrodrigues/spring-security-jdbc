<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
	<title>
		Custom login page
	</title>
	
	<style>
		.failed{
			color: red;
		}
	</style>
</head>


<body>
	<h3>My custom login page</h3>

	<form:form action = "${pageContext.request.contextPath}/authenticateTheUser"
				method = "POST">
		
		<c:if test="${param.error!=null}">
			<i class = "failed">Invalid credentials is what you have given</i>
		</c:if>
		
		
		<p>
			Username <input type = "text" name = "username"/>
		</p>
		
		<p>
			Password <input type = "password" name = "password"/>
		</p>
		
		<input type = "submit" value = "Login"/>
	</form:form>

</body>
</html>
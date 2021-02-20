<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<title>
		Customer Registration Form
	</title>
	    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
		

</head>

	<body>
		<h2>Spring MVC DEMO - Customer Registration Form</h2>
		<i>Fill out the form. Asterisk (*) means required</i>
		<br/>
		<form:form action="processForm" modelAttribute="customer">
			First Name : <form:input path="firstName"/>
			<br/>
			Last Name(*) : <form:input path="lastName"/>
			<form:errors path="lastName" cssClass="error"/>
			<br/>
			<input type="submit" value="Submit"/>
		</form:form>
		<hr/>
		<a href="<c:url value="/" />">back to main menu</a>
	</body>
</html>
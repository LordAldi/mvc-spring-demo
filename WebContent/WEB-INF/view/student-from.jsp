<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<title>
		Student Registration Form
	</title>

</head>
	<body>
		<h2>Spring MVC DEMO - Student Registration Form</h2>
		<form:form action="processForm" modelAttribute="student">
		First Name : <form:input path="firstName"/>
		<br/>
		Last Name : <form:input path="lastName"/>
		<br/>
		<input type="submit" value="Submit"/>
		
		</form:form>
		<hr/>
		<a href="">back to main menu</a>
	</body>
</html>
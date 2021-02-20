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
		Country :
		<form:select path="country">
			<form:options items="${student.countryOptions }"/>
		</form:select>
		<br/>
		Favorite Language:<br/>
		<form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions }"/>
		<br/>
		Operation System:<br/>
		Linux <form:checkbox path="operatingSystems" value="Linux"/>
		Mac Os <form:checkbox path="operatingSystems" value="Mac Os"/>
		Windows <form:checkbox path="operatingSystems" value="Windows"/>
		<br/>
		<input type="submit" value="Submit"/>
		
		</form:form>
		<hr/>
		<a href="">back to main menu</a>
	</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>
		Student Confirmation
	</title>

</head>
	<body>
		<h2>Spring MVC DEMO - Student Confirmation</h2>
		<hr/>
		the student is confirmed: ${student.firstName} ${student.lastName } from ${student.country }
		<br/>
		Fav Language: ${student.favoriteLanguage }
		<br/>
		Operation Systems:
		<ul>
			<c:forEach var="temp" items="${student.operatingSystems }">
				<li>${temp}</li>
			</c:forEach>
		</ul>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="Header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="">
<title>Signup</title>
</head>
<body>

	<form:form action="userInsert" modelAttribute="user" method="post">
	<div class="container">
		<table style="text-align: center;"  class="table table-dark table-hover table-striped">
			<tr bgcolor="primary" style="text-align: center;">
				<td colspan="2">Sign Up</td>
			</tr>
			<tr>
				<td>Name</td>
				<td><form:input path="customerName" /></td>
			</tr>
			<tr>
				<td>User Name</td>
				<td><form:input path="userName" /></td>
			</tr>
			<tr>
				<td>Contact Number</td>
				<td><form:input path="contactNumber" /></td>
			</tr>
			<tr>
				<td>Email ID</td>
				<td><form:input path="emailId" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><form:input path="passWord"  type="password"/></td>
			</tr>
			<tr>
				<td>Confirm Password</td>
				<td><form:input path="confirmPassword" type="password"/></td>
			</tr>
			<tr>
				<td>
					<form:hidden path="role" value="Role_USER" /> 
					<form:hidden path="enabled" value="true" />
				</td>
			</tr>

			<tr>
				<td colspan="2" style="text-align: center;">
					
						<input type="submit" value="Signup" class="btn btn-primary">
				
				</td>
			</tr>

		</table>
		</div>
	</form:form>
	
</body>
</html>
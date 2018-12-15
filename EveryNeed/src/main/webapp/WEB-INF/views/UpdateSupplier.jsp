<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Header.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="">
<title>Insert title here</title>
</head>
<body>
<form:form action="${pageContext.request.contextPath}/UpdateSupplier" modelAttribute="supplier"
		method="post">
		<table style="text-align: center;" class="table table-bordered table-condensed table-dark table-hover ">
			<tr bgcolor="Primary">
				<td colspan="2">Manage Supplier</td>
			</tr>
			<form:hidden path="supplierId" />
			<tr>
				<td>Supplier Name</td>
				<td><form:input path="supplierName" /></td>
			</tr>
			<tr>
				<td>Firm Name</td>
				<td><form:input path="firmName" /></td>
			</tr>
			<tr>
				<td>GSTIN Number</td>
				<td><form:input path="GSTIN" /></td>
			</tr>
			<tr>
				<td>Pan Card</td>
				<td><form:input path="panCard" /></td>
			</tr>
			<tr>
				<td>Adhar Number</td>
				<td><form:input path="adharCard" /></td>
			</tr>
			<tr>
				<td>Phone Number</td>
				<td><form:input path="phoneNumber" /></td>
			</tr>
			<tr>
				<td>Email ID</td>
				<td><form:input path="emailId" /></td>
			</tr>
			<tr>
				<td>Ratings</td>
				<td><form:input path="ratings" /></td>
			</tr>
			<tr>
				<td>Category</td>
				<td>
					<form:select path="categoryId">
					<form:option value="0" label="--Select List--"/>
					<form:options items="${categoryList}"/>
					</form:select>
				</td>
			</tr>
			
			<tr>
				<td colspan="2">
						<input type="submit" value="Update" class="btn btn-primary">
				</td>
			</tr>
			
		</table>
	</form:form>
</body>
</html>
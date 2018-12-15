<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="Header.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="">
<title>Supplier</title>
</head>
<body>
<form:form action="${pageContext.request.contextPath}/SupplierInsert" modelAttribute="supplier"
		method="post">
		<table style="text-align: center;" class="table table-bordered table-condensed table-dark table-hover ">
			<tr bgcolor="Primary">
				<td colspan="2">Manage Supplier</td>
			</tr>
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
				<td colspan="2" style="text-align: center;">
						<input type="submit" value="Submit" class="btn btn-primary">
				</td>
			</tr>
			
		</table>
	</form:form>
	<table style="text-align: center;" class="table table-bordered table-condensed table-dark table-hover ">
		<tr  bgcolor="Primary">
			<td>Supplier Code</td>
			<td>Supplier ID</td>
			<td>Supplier Name</td>
			<td>Firm Name</td>
			<td>GSTIN</td>
			<td>PanCard</td>
			<td>Adhar Number</td>
			<td>Phone Number</td>
			<td>Email Id</td>
			<td>Ratings</td>
			<td>Category</td>
			<td>Action</td>
			
		</tr>
		<c:forEach items="${supplierList}" var="supplier">
		<tr>
			<td>${supplier.supplierCode}</td>
			<td>${supplier.supplierId}</td>
			<td>${supplier.supplierName}</td>
			<td>${supplier.firmName}</td>
			<td>${supplier.GSTIN}</td>
			<td>${supplier.panCard}</td>
			<td>${supplier.adharCard}</td>
			<td>${supplier.phoneNumber}</td>
			<td>${supplier.emailId}</td>
			<td>${supplier.ratings}</td>
			<td>${supplier.categoryId}</td>
			
			<td>
				<a href="<c:url value='/deleteSupplier/${supplier.supplierId}'/>"><i class="fas fa-trash-alt"></i></a>
				<a href="<c:url value='/editSupplier/${supplier.supplierId}'/>"><i class="fas fa-pen-square"></i></a>
			</td>
		</tr>
		
		</c:forEach>
	</table>
</body>
</html>
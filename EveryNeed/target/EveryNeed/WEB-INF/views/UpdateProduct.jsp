<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="Header.jsp"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="">
</head>
<body>
<form:form action="${pageContext.request.contextPath}/UpdateProduct" modelAttribute="product"
		method="post" enctype="multipart/form-data">
		<table style="text-align: center;" class="table table-bordered table-condensed table-dark table-hover ">
			<tr bgcolor="primary">
				<td colspan="2">Manage Product</td>
			</tr>
				<form:hidden path="productId" />
			<tr>
				<td>Product Name</td>
				<td><form:input path="productName" /></td>
			</tr>
			<tr>
				<td>Brand</td>
				<td><form:input path="brand" /></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><form:input path="description" /></td>
			</tr>
			<tr>
				<td>Quantity</td>
				<td><form:input path="quantity" /></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><form:input path="unitPrice" /></td>
			</tr>
			<tr>
			<td>Product Image</td>
				<td><form:input path="file" type="file" /></td>
			</tr>
			<tr>
				<td>Ratings</td>
				<td><form:input path="rating" /></td>
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
				<td>Supplier</td>
				<td><form:select path="supplierId">
					<form:option value="0" label="--Select List--"></form:option>
					<form:options items="${supplierList}" />
				</form:select>
				</td>
			</tr>
			
			<tr>
				<td colspan="2" style="text-align: center;">
						<input type="submit" value="Update" class="btn btn-primary">
				</td>
			</tr>
			
		</table>
	</form:form>
</body>
</html>
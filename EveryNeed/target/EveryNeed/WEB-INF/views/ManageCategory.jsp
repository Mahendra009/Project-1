<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="Header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="">
<title>Category</title>
</head>
<body>

<c:if test="${flag}">
<form action="<c:url value="/updateCategory"/>" method="post">
		<table style="text-align: center;" class="table table-bordered table-condensed table-dark table-hover">
		<tr bgcolor="Primary">
			<td colspan="2">Manage Category</td>
		</tr>
			<tr>
				<td>Category ID</td>
				<td><input type="text" name="categoryId" value="${categoryData.categoryId}" readonly></td>
			</tr>
		
			<tr>
				<td>Category Name</td>
				<td><input type="text" name="categoryName" value="${categoryData.categoryName}"></td>
			</tr>
			<tr>
				<td>Category Description</td>
				<td><input type="text" name="description" value="${categoryData.description}"></td>
			</tr>
			<tr>
			<td colspan="2" style="text-align: center;">

					<input type="submit" value="Update" class="btn btn-primary">
			</td>
		</tr>
		</table>
	</form>

</c:if>
<c:if test="${!flag}">
	<form action="<c:url value="/InserCategory"/>" method="post">
		<table style="text-align: center;" class="table table-bordered table-condensed table-dark table-hover">
		<tr bgcolor="Primary" >
			<td colspan="2">Manage Category</td>
		</tr>
			<tr>
				<td>Category Name</td>
				<td><input type="text" name="categoryName"></td>
			</tr>
			<tr>
				<td>Category Description</td>
				<td><input type="text" name="description"></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align: center;">
						<input type="submit" value="Submit" class="btn btn-primary">
				</td>
			</tr>
		</table>
	</form>

	<table style="text-align: center;" class="table table-bordered table-condensed table-dark table-hover ">
		<tr  bgcolor="Primary">
			<td>Category ID</td>
			<td>Category Name</td>
			<td>Description</td>
			<td>Action</td>
		</tr>
		<c:forEach items="${categoryList}" var="category">
		<tr>
			<td>${category.categoryId}</td>
			<td>${category.categoryName}</td>
			<td>${category.description}</td>
			<td>
				<a href="<c:url value='/deleteCategory/${category.categoryId}'/>"><i class="fas fa-trash-alt"></i></a>
				<a href="<c:url value='/editCategory/${category.categoryId}'/>"><i class="fas fa-pen-square"></i></a>
			</td>
		</tr>
		
		</c:forEach>
	</table>
	</c:if>	
	
</body>
</html>
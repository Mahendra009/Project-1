<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="Header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="">
<title>Product</title>
</head>
<body>
	
		<table class="table table-dark table-hover" border="1">
			<tr>
				<td rowspan="11">
				<img alt="" src="<c:url value="/resources/images/${product.productId}.jpg"/>" width="1000px" />
				</td>
			</tr>
			<tr>
				<td>Product code</td>
				<td>${product.productCode}</td>
			</tr>
			<tr>
				<td>Product Name</td>
				<td>${product.productName}</td>
			</tr>
			<tr>
				<td>Brand</td>
				<td>${product.brand}</td>
			</tr>
			<tr>
				<td>Price</td>
				<td>&#8377 ${product.unitPrice}</td>
			</tr>
			<tr>
				<td >Specifications</td>
				<td style="word-wrap:break-word;">${product.description}</td>
				
			</tr>
			<tr>
				<td>Supplier ID</td>
				<td>${product.supplierId}</td>
			</tr>
			<tr>
				<td>Stock Left</td>
				<td>${product.quantity}</td>
			</tr>
			<tr>
				<td>Category</td>
				<td>${categoryName}</td>
			</tr>
			
			<form action="<c:url value="/AddToCart/${product.productId}" />" method="get">
			<tr>
				<td>Quantity</td>
				<td>
					<select name="quantity" class="form-control btn-block">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="1">
					<input type="submit" value="Add To Cart" class="btn btn-info btn-block">
				</td>
				<td colspan="1">
					<input type="submit" value="Shop Now" class="btn btn-info btn-block">
				</td>
			</tr>
			</form>
			
		</table>
</body>
</html>
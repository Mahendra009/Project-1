<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="Header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CartItem</title>
</head>
<body>
	<div class="container">
		<table class="table">
			<tr style="text-align: center; color: white;">
				<td colspan="8" class="border" bgcolor="blue"><h3>Shopping
						Cart</h3></td>
			</tr>
			<tr>
				<td>SL #</td>
				<td>Product Name</td>
				<td>Brand</td>
				<td>Product Code</td>
				<td>Quantity</td>
				<td>Price</td>
				<td>Total Amount</td>
				<td>Action</td>
			</tr>
			<c:if test="${empty cartItems}">
				<tr>
					<td>Your Cart is empty</td>
				</tr>
			</c:if>
			<c:if test="${not empty cartItems}">
			
			<c:forEach items="${cartItems}" var="cartItem">
			<form action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>" method="get">
					<tr>
						<td></td>
						<td>${cartItem.productName}</td>
						<td>${cartItem.brand}</td>
						<td>${cartItem.productCode}</td>
						<td><input type="text" name="quantity"
							value="${cartItem.quantity}"></td>
						<td>${cartItem.unitPrice}</td>
						<td>${cartItem.quantity*cartItem.unitPrice}</td>
						<td>
						<input type="submit" value="Update"> <a
							href="<c:url value="/deleteCartItem/${cartItem.cartItemId}"/>"
							class="btn btn-danger">Delete</a>
						</td>
					</tr>
					</form>
			</c:forEach>
			
			</c:if>
			<tr bgcolor="orange">
				<td colspan="6">Total Amount</td>
				<td colspan="6">${totalPurchaseAmount}</td>
			</tr>
			<tr bgcolor="blue">
				<td colspan="6"><a href="<c:url value="/continueShopping" />"
					class="btn btn-info">Continue Shopping</a></td>
				<td colspan="6"><a href="<c:url value="/checkOut" />"
					class="btn btn-info">Check Out</a></td>
					
			</tr>
		</table>
	</div>
</body>
</html>
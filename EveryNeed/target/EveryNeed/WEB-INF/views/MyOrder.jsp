<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>MyOrder</title>
</head>
<body>
<%@include file="Header.jsp"%>
<div class="container">
		<table class="table">
			<tr style="text-align: center; color: white;">
				<td colspan="8" class="border" bgcolor="blue"><h3>Your Order</h3></td>
			</tr>
			<tr>
				<td>SL #</td>
				<td>Product Name</td>
				<td>Brand</td>
				<td>Product Code</td>
				<td>Quantity</td>
				<td>Price</td>
				<td>Total Amount</td>
				
			</tr>
			<c:if test="${empty cartItems}">
				<tr>
					<td>Your Cart is empty</td>
				</tr>
			</c:if>
			<c:if test="${not empty cartItems}">
			<%-- <form action="<c:url value="/updateCartItem/${cartItem.cartItemId}"/>" method="get"> --%>
			<c:forEach items="${cartItems}" var="cartItem">
					<tr>
						<td></td>
						<td>${cartItem.productName}</td>
						<td>${cartItem.brand}</td>
						<td>${cartItem.productCode}</td>
						<td>${cartItem.quantity}</td>
						<td>${cartItem.unitPrice}</td>
						<td>${cartItem.quantity*cartItem.unitPrice}</td>
					</tr>
			</c:forEach>
			<!-- </form> -->
			</c:if>
			<tr bgcolor="orange">
				<td colspan="6">Total Amount</td>
				<td colspan="6">${totalPurchaseAmount}</td>
			</tr>
			<tr bgcolor="blue">
				<td colspan="6"><a href="<c:url value="/continueShopping" />"
					class="btn btn-info">Continue Shopping</a></td>
				<td colspan="6"><a href="<c:url value="/payment" />"
					class="btn btn-info">Payment</a></td>
					
			</tr>
		</table>
	</div>
</body>
</html>
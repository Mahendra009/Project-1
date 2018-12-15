<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="Header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
</head>
<body>
<div class="container">
<form action="<c:url value="/paymentProcess"/>" method="post">
		<table class="table">
			<tr style="text-align: center; color: white;">
				<td colspan="8" class="border" bgcolor="blue"><h3>Your Order</h3></td>
			</tr>
			<tr bgcolor="orange" style="text-align: center;">
				<td colspan="6"><h4>Total Amount</h4></td>
				<td colspan="6"><h4> &#8377 ${totalPurchaseAmount}/-</h4></td>
			</tr>
			
			
</table>
</form>
</div>
<br/><br/><br/>


	<div class="container">
		<table style="text-align: center;" class="table table-bordered table-condensed table-dark table-hover">
			<tr bgcolor="primary">
				<td colspan="2"><h3>Payment Options</h3></td>
			</tr>
			<tr>
			<td colspan="2">
				<input type="radio" name="paymentmode" value="cc"/>Credit Card
				<input type="radio" name="paymentmode" value="dc"/>Debit Card
				<input type="radio" name="paymentmode" value="pt"/>PayTm
				<input type="radio" name="paymentmode" value="pp"/>Pay Pal
				<input type="radio" name="paymentmode" value="cod"/>Cash On Delivery
			</td>
			</tr>
			<tr>
				<td>Card No :</td>
				<td><input type="text" name="cardno" required="required"/></td>
			</tr>
			<tr>
				<td>CVV</td>
				<td><input type="text" name="cvv"></td>
			</tr>
			<tr>
				<td>Valid up To</td>
				<td><input type="text" name="valid"></td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="submit" name="Payment" /></td>
			</tr>
			
		</table>
		
	</div>
</body>
</html>
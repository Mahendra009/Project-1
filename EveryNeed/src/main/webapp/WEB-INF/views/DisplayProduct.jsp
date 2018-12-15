<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<%@include file="Header.jsp" %>     
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="">
<title>Products</title>
</head>
<body>




<div class="row text-center text-lg-center">
<c:forEach items="${productList}" var="product">
 <div class="col-lg-3 col-md-4 col-xs-6">
 
 <div class="d-block mb-4 h-100" style="width: 18rem; height: 15rem;">
  <img class="card-img-top img-fluid" src="<c:url value="/resources/images/${product.productId}.jpg"/>" style="height: 150px;"  alt="Card image cap">
   <span class="card-title">
   <STRONG>${product.productName}</STRONG> <br/>
<strong>&#8377 ${product.unitPrice} /-</strong> <br/>
</span>
  <div class="card-action">
    <a href="<c:url value="/totalProductInfo/${product.productId}"/>" class="btn btn-primary">View</a>
     
     <a href="<c:url value="/AddToCart/${product.productId}?quantity=1" />" class="btn btn-primary"><i class="fas fa-cart-plus"></i></a>
  </div>
</div>

</div>
</c:forEach>
</div>
</body>
</html>
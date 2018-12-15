<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontawesome-all.css">

<link rel="shortcut icon" href="">
<style>
.dropdown:hover>.dropdown-menu
{
	display: block;
}


</style>


</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand" style="font-size:30px;" href="${pageContext.request.contextPath}/home"><i class="fab fa-etsy"></i>veryNeed.in <i class="fas fa-shopping-bag"></i></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse ml-5" id="navbarResponsive">
         <div>
				<form action="">
					<div class="input-group">
						<input type="text" class="form-control" size="80px"
							placeholder="Search Your Product Here" name="search">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit" style="background-color:#e91e63;">
								<i class="fas fa-search" style="font-size:24px;"></i>
							</button>
						</div>
					</div>
				</form>
			</div>
          <ul class="navbar-nav ml-5" style="font-size:20px;">
        
            <li class="nav-item active">
              <a class="nav-link" href="login">Login <i class="fas fa-sign-in-alt"></i></a>
            </li>
            
            <li class="nav-item active ml-5">
              <a class="nav-link" href="register">Signup <i class="fas fa-user-plus"></i></a>
            </li>
            <li class="nav-item active ml-5">
              <a class="nav-link" href="${pageContext.request.contextPath}/cart"><i class="fas fa-cart-plus"></i></a>
            </li>
            
           	 	<%-- <c:if test="${sessionScope.loggedIn}">
      			<c:if test="${sessionScope.role=='Role_USER'}">
             <li class="nav-item active dropdown ml-5">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          My Account
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#"><i class="fas fa-users"></i> Profile</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/checkOut"><i class="fab fa-first-order-alt"></i> Order Detail</a>
           <a class="dropdown-item" href="${pageContext.request.contextPath}/payment"><i class="fas fa-wallet"></i> Payment Detail</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/perform_logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      </c:if>
      </c:if> --%>
      
     <%--  <c:if test="${sessionScope.loggedIn}">
      <c:if test="${sessionScope.role=='Role_ADMIN'}">
            <li class="nav-item active dropdown ml-5">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Admin
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="${pageContext.request.contextPath}/category"><i class="fas fa-object-group"></i> Manage Category</a>
          <a class="dropdown-item" href="${pageContext.request.contextPath}/supplier"><i class="fas fa-building"></i> Manage Supplier</a>
           <a class="dropdown-item" href="${pageContext.request.contextPath}/product"><i class="fab fa-product-hunt"></i> Manage Products</a>
           <a class="dropdown-item" href="${pageContext.request.contextPath}/displayProduct"><i class="fas fa-tv"></i> Display Products</a>
           <a class="dropdown-item" href="${pageContext.request.contextPath}/perform_logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      </c:if>
      </c:if> --%>
          </ul>
        </div>
      </div>
    </nav>
    
    
    
    
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>  

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/submenu.js"></script>  
</body>
</html>
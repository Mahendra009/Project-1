<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="">
<style>
.dropdown-submenu
{
	  position: static !important; 
}

.mega-dropdown-menu {
    padding: 20px 0px;
    width: 100%;
    box-shadow: none;
    -webkit-box-shadow: none;
}


}

</style>
<link rel="stylesheet" href="<c:url value="/resources/css/submenu.css"/>"/>

</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
   
    <div class="collapse navbar-collapse" id="navbar1">
        <ul class="navbar-nav">
            <li class="nav-item active dropdown">
                <a href="#" id="menu" data-toggle="dropdown" class="nav-link dropdown-toggle">Shop Here</a>
                <ul class="dropdown-menu">
                <c:forEach items="${productData}" var="category">
                 <c:if test="${category.key.categoryId!=49 && category.key.categoryId!=50}"> <!-- for todays deal && so on dynamic category -->
                 
                    <li class="dropdown-item dropdown-submenu dropright">
                       
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">${category.key.categoryName}</a>
                        <c:if test="${!empty category.value}">
                        <ul class="dropdown-menu mega-dropdown-menu">
                            <c:forEach items="${category.value}" var="product">
                           
                            <li class="dropdown-item">
                                <a href="${pageContext.request.contextPath}/product/brand/${product.brand}">${product.brand}</a>
                            </li>
                            
                            </c:forEach>
                        </ul>
                        </c:if>
                       
                    </li>
                    </c:if>
                 </c:forEach>
                    
                </ul>
            </li>
            
            <c:if test="${sessionScope.loggedIn}">
      			<c:if test="${sessionScope.role=='Role_USER'}">
             <li class="nav-item active dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         ${username}
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
      </c:if>
            
             <c:if test="${sessionScope.loggedIn}">
      <c:if test="${sessionScope.role=='Role_ADMIN'}">
            <li class="nav-item active dropdown  float-right">
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
      </c:if>
        </ul>
    </div>
</nav>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="">
<style>
/* .dropdown-menu
{
	width: 1450px;
} */
.mega-menu {
	 
	width: 1000px;
	
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
                    <li class="dropdown-item dropdown-submenu">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">${category.key.categoryName}</a>
                        <c:if test="${!empty category.value}">
                        <ul class="dropdown-menu">
                            <c:forEach items="${category.value}" var="product">
                            <li class="dropdown-item">
                                <a href="${pageContext.request.contextPath}/product/brand/${product.brand}">${product.brand}</a>
                            </li>
                            
                            </c:forEach>
                        </ul>
                        </c:if>
                    </li>
                    
                 </c:forEach>
                    
                </ul>
            </li>
        </ul>
    </div>
</nav>
	
</body>
</html>
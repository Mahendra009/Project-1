<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<style type="text/css">
#myCarousel img {

}

#myCarousel div {
    height:250px;
    width:100%;
}

#myCarousel.carousel {
    padding-top:30px;
    text-align:center;
}

.col-md-3 .img-thumbnail {
    height:100%;
}

</style>
</head>
<body>
<center><h2 class="my-4">Today's Special Deals</h2> </center>
<div id="myCarousel" class="carousel slide col-xs-12" data-ride="carousel" data-interval="false">
  
  <div class="carousel-inner">
    <c:set var="count" value="0"/>
    <div class="carousel-item active">
      <div class="row no-gutters">
      <c:forEach items="${todaysdeal}" var="product">
          <div class="col-md-3 col-sm-6 ">
          <a href="<c:url value="/totalProductInfo/${product.productId}"/>" class="thumbnail">
          	<img src="<c:url value="/resources/images/${product.productId}.jpg"/>" alt="Image" width="250" height="250" class="img-fluid img-thumbnail">
          </a>
          </div>
          <c:set var="count" value="${count+1}"/>
          
          <c:if test="${count%4==0}">
          		</div>
    		</div>
     		<div class="carousel-item">
      			<div class="row no-gutters">
          </c:if>
      </c:forEach>
      </div>
    </div>  
  </div>
  <a class="carousel-control-prev" style="background:black;width: 2% !important; height: 20%;" href="#myCarousel" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#myCarousel" style="background:black;width: 2% !important; height: 20%;" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</body>
</html>
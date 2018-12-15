<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="">
<style type="text/css">
#ThumbnailCarousel img {

}

#ThumbnailCarousel div {
    height:250px;
    width:100%;
}

#ThumbnailCarousel.carousel {
    padding-top:30px;
    text-align:center;
}

.col-md-3 .img-thumbnail {
    height:100%;
}

</style>

</head>
<body>
<center><h2 class="my-4">Most Popular</h2> </center>
<div id="ThumbnailCarousel" class="carousel slide col-xs-12" data-ride="carousel" data-interval="false">
  <div class="carousel-inner">
    <div class="carousel-item active">
       <div class="row no-gutters">
       <c:forEach items="${mostPopular}" var="product">
          <div class="col-md-3 col-sm-6">
          	<a href="<c:url value="/totalProductInfo/${product.productId}"/>" class="thumbnail">
          		<img src="<c:url value="/resources/images/${product.productId}.jpg"/>" alt="Image" class="img-fluid img-thumbnail">
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
  
  <a class="carousel-control-prev" style="background:black;width: 2% !important; height: 20%;" href="#ThumbnailCarousel" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#ThumbnailCarousel" style="background:black;width: 2% !important; height: 20%;" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


</body>
</html>
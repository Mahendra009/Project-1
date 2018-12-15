<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontawesome-all.css">
<link rel="shortcut icon" href="">
<title>EveryNeed.in</title>
</head>
<body>
<%@include file="Header.jsp" %>
<%@include file="Menu.jsp" %>

 <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="resources/images/2.jpeg" alt="First slide"  height="350">
      <div class="carousel-caption d-none d-md-block">
    <h5>First Slide</h5>
    <p>XXXXX</p>
  </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="resources/images/Banner1.gif" alt="Second slide"  height="350">
      <div class="carousel-caption d-none d-md-block">
    <h5>Second Slide</h5>
    <p>XXXX</p>
  </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="resources/images/banner4.jpg" alt="Third slide"  height="350">
      <div class="carousel-caption d-none d-md-block">
    <h5>Third Slide</h5>
    <p>XXXX</p>
  </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<%@include file="HomeCards.jsp" %>
 




</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Gastronomia</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp"/>

<div class="container">
  <h2>Roteiro Gastronômico</h2>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="img/churrasco1.jpg" alt="churrasco" style="width:100%;">
        <div class="carousel-caption">
          <h3>Churrascarias</h3>
          <p>Rodízios e Buffets: O melhor das carnes!</p>
        </div>
      </div>

      <div class="item">
        <img src="img/hamburger1.jpg" alt="hamburger" style="width:100%;">
        <div class="carousel-caption">
          <h3>Hamburguerias</h3>
          <p>Artesanais ou Tradicionais. Qual é a sua escolha?</p>
        </div>
      </div>
    
      <div class="item">
        <img src="img/petisco.jpg" alt="petisco" style="width:100%;">
        <div class="carousel-caption">
          <h3>Petiscarias</h3>
          <p>No fim da tarde é tudo de bom!</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Anterior</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Próximo</span>
    </a>
  </div>
</div>

</body>
</html>
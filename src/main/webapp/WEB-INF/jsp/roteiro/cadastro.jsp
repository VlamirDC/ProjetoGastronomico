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

	<c:set var="titulo" value="Cadastro de Tipos de Estabelecimentos"/>
	<c:set var="rotaIncluir" value="/roteiro/incluir"/>
	<c:set var="metodo" value="post"/>
	<c:set var="botao" value="Cadastrar"/>
	
	<c:if test="${not empty rotaRoteiro}">
		<c:set var="titulo" value="Consulta de Tipos de Estabelecimentos"/>
		<c:set var="rotaIncluir" value="/voltar"/>
		<c:set var="metodo" value="get"/>
		<c:set var="botao" value="Voltar"/>
	</c:if>
	


	<h2>${titulo}</h2>
		<form action="${rotaIncluir}" method="${metodo}">
		    <div class="form-group">
		      <label>Tipo de Estabelecimento:</label>
		      <input type="text" class="form-control" value = "${rotaRoteiro.nomeRoteiro}" placeholder="Entre com o tipo de estabelecimento" 
		      name="nomeRoteiro">
		    </div>
		    <div class="form-group">
		      <label>Quantidade de Tipo de Estabelecimento:</label>
		      <input type="text" class="form-control" value = "${rotaRoteiro.qtdTipoRoteiro}" placeholder="Entre com a quantidade de tipo de estabelecimento" 
		      name="qtdTipoRoteiro">
		    </div>
		    <div class="form-group">
		      <label>Cidade:</label>
		      <input type="text" class="form-control" value = "${rotaRoteiro.regiaoLocal}" placeholder="Entre com a cidade onde está localizado o tipo de estabelecimento" 
		      name="regiaoLocal">
		    </div>

    	<button type="submit" class="btn btn-default">${botao}</button>
  </form>
  
</div>

</body>
</html>
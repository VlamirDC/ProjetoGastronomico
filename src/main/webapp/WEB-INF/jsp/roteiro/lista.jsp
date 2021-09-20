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
		<c:if test="${not empty mensagem}">
			<div class="alert alert-success alert-dismissible">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<strong>Sucesso!</strong> ${mensagem}
			</div>
		</c:if>

		<h3><a href="/roteiro">Incluir Tipo de Estabelecimento</a></h3>
		
		<c:if test="${not empty roteiros}">
		  <h2>Listagem de Tipos de Estabelecimentos: ${roteiros.size()}</h2>
		  
		  	<form action="/roteiro/ordenar" method="post">
			    <div class="input-group">
			    	<select name="sortBy" class="form-control">
			    		<option value="nomeRoteiro">Nome</option>
			    		<option value="qtdTipoRoteiro">Quantidade</option>
			    	</select>
			      <div class="input-group-btn">
			        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-sort-by-alphabet
	"></i></button>
			      </div>
			    </div>
			 </form>
		  	
		  	<table class="table table-striped">
		    <thead>
		      <tr>
		      	<th>Id</th>
		        <th>Nome</th>
		        <th>Quantidade</th>
		        <th>Cidade</th>
		        <th>Usuário</th>
		        <th>Exclusão</th>
		        <th>Consulta</th>
		      </tr>
		    </thead>
		    <tbody>
		    	<c:forEach var="roteiro" items="${roteiros}">
			      <tr>
			      	<td>${roteiro.id}</td>
			        <td>${roteiro.nomeRoteiro}</td>
			        <td>${roteiro.qtdTipoRoteiro}</td>
			        <td>${roteiro.regiaoLocal}</td>
			        <td>${roteiro.usuario.nome}</td>
			        <td><a href="/roteiro/${roteiro.id}/excluir">Excluir</a></td>
			        <td><a href="/roteiro/${roteiro.id}/consultar">Consultar</a></td>
			      </tr>
		      	</c:forEach>
		    </tbody>
		  	</table>
		  </c:if>
		  
		  <c:if test="${empty roteiros}">
		  	<h3>Não foram encontrados tipos de estabelecimentos</h3>
		  </c:if>
  
</div>

</body>
</html>
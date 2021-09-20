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

		<h3><a href="/usuario">Incluir Usuário</a></h3>
		
		<c:if test="${not empty usuarios}">
		  <h2>Listagem de Usuarios: ${usuarios.size()}</h2>
		  	
		  	<table class="table table-striped">
		    <thead>
		      <tr>
		      	<th>Id</th>
		        <th>Nome</th>
		        <th>Email</th>
		        <th>Senha</th>
		        <th>Tipo Estabelecimento</th>
		        <th>Exclusão</th> 
		      </tr>
		    </thead>
		    <tbody>
		    	<c:forEach var="usuario" items="${usuarios}">
			      <tr>
			      	<td>${usuario.id}</td>
			        <td>${usuario.nome}</td>
			        <td>${usuario.email}</td>
			        <td>${usuario.senha}</td>
			        <td>${usuario.roteiros.size()}</td>
			        <td><a href="/usuario/${usuario.id}/excluir">Excluir</a></td>
			        
			      </tr>
		      	</c:forEach>
		    </tbody>
		  	</table>
		  </c:if>
		  
		  <c:if test="${empty usuarios}">
		  	<h3>Não foram encontrados usuários</h3>
		  </c:if>
  
</div>

</body>
</html>
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

	<h2>Cadastro de Usuário</h2>
		<form action="/usuario/incluir" method="post">
		    <div class="form-group">
		      <label>Nome:</label>
		      <input type="text" class="form-control"  placeholder="Entre com o nome" 
		      name="nome">
		    </div>
		    <div class="form-group">
		      <label>Email:</label>
		      <input type="email" class="form-control"  placeholder="Entre com o email" 
		      name="email">
		    </div>
		    <div class="form-group">
		      <label>Senha:</label>
		      <input type="password" class="form-control"  placeholder="Entre com a senha" 
		      name="senha">
		    </div>

    	<button type="submit" class="btn btn-default">Cadastrar</button>
  </form>
  
</div>

</body>
</html>
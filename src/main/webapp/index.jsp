<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<title>Sistema de controle de vagas de empregos</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="mx-auto">
    <a class="navbar-brand" href="#">Sistema de controle de vagas de empregos</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse mt-5" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Cadastrar</a>

        <li class="nav-item ">
          <a class="nav-link" href="vagas_abertas.jsp"  role="button">
           Vagas Abertas
          </a>
         
        </li>
        </ul>
    </div>
  </div>
</nav>

<div class="container mb-5">
<h1 class="text-center mt-5 fs-3 text">Sistema de controle de vagas de empregos inclusão</h1>
	<form action="vaga_post.jsp" method="POST">
	  <div class="mb-3 mt-5">
	    <label for="InputDescription" class="form-label">Descrição</label>
	    <input required type="text" name="descricao" class="form-control" id="InputDescription" aria-describedby="descriptionHelp">
	    
	  </div>
	  <div class="mb-3">
	    <label for="InputRequeridRequirements" class="form-label">Requisitos Obrigatórios</label>
	    <input required type="text" name="req_obrigatorios" class="form-control" id="InputRequeridRequirements">
	  </div>
	  
	  <div class="mb-3">
	    <label for="InputOptionalRequirements" class="form-label">Requisitos Desejáveis</label>
	    <input required type="text" name="req_desejaveis" class="form-control" id="InputOptionalRequirements">
	  </div>
	  
	  <div class="mb-3">
	    <label for="InputRemuneration" class="form-label">Remuneração</label>
	    <input required type="text" name="remuneracao" class="form-control" id="InputRemuneration">
	  </div>
	  
	  <div class="mb-3">
	    <label for="InputBenefits" class="form-label">Benefícions</label>
	    <input required type="text" name="beneficios" class="form-control" id="InputBenefits">
	  </div>
	  
	  <div class="mb-3">
	    <label for="InputPlaceWork" class="form-label">Local de Trabalho</label>
	    <input required type="text" name="local_trabalho" class="form-control" id="InputPlaceWork">
	  </div>
	  
	  <button type="submit" class="btn btn-primary">Cadastrar</button>
	</form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
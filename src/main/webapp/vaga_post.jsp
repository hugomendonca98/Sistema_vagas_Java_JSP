<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="vagaService.vagas.Vagas"%>
<%@ page import="java.text.DecimalFormat"%>

<%
String description = request.getParameter("descricao");
String reqRequered = request.getParameter("req_obrigatorios");
String reqOptional = request.getParameter("req_desejaveis");

DecimalFormat salary = new DecimalFormat ("#,##0.00");
Float salaryFormated = Float.parseFloat(request.getParameter("remuneracao"));

String benefits = request.getParameter("beneficios");
String placeWork = request.getParameter("local_trabalho");

int open = 1;

Vagas vagaClass = new Vagas();

vagaClass.setDescricao(description);
vagaClass.setReq_obrigatorios(reqRequered);
vagaClass.setReq_desejaveis(reqOptional);
vagaClass.setRemuneracao(salaryFormated);
vagaClass.setBeneficios(benefits);
vagaClass.setLocal_trabalho(placeWork);
vagaClass.setAberta(open);
vagaClass.incluir();
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="./css/styles.css" rel="stylesheet">
	<title>Sistema de controle de vagas de empregos</title>
</head>
<body>
<div class="container mt-5">
	<h1 class="text-center mt-5 mb-5 fs-3 text">Sistema de controle de vagas de empregos</h1>
	
	<div class="align-text-content mt-2">
		<p class="fs-4 text-content-form">Descrição:</p>
		<p class="fs-4 text-content-form-color"><%=description%></p>
	</div>
	<div class="align-text-content">
		<p class="fs-4 text-content-form">Requisitos Obrigatórios:</p>
		<p class="fs-4 text-content-form-color"><%=reqRequered%></p>
	</div>
	<div class="align-text-content">
		<p class="fs-4 text-content-form">Requisitos Opcionais:</p>
		<p class="fs-4 text-content-form-color"><%=reqOptional%></p>
	</div>
	<div class="align-text-content">
		<p class="fs-4 text-content-form">Salário:</p>
		<p class="fs-4 text-content-form-color">R$<%=salaryFormated%></p>
	</div>
	<div class="align-text-content">
		<p class="fs-4 text-content-form">Beneficíos:</p>
		<p class="fs-4 text-content-form-color"><%=benefits%></p>
	</div>
	<div class="align-text-content">
		<p class="fs-4 text-content-form">Local de Trabalho:</p>
		<p class="fs-4 text-content-form-color"><%=placeWork%></p>
	</div>
	<div class="align-text-content">
		<p class="fs-4 text-content-form">Status da Vaga:</p>
		<p class="fs-4 text-content-form-color">Aberta</p>
	</div>
	 <a href="index.jsp" class="btn btn-primary">Voltar</a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
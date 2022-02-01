<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="vagaService.vagas.ConectaDB" %>
<%@ page import="vagaService.vagas.Vagas" %>

<%

Vagas vagaClass = new Vagas();

ConectaDB bd = ConectaDB.getInstance();
Connection conn = bd.getConnection();

String sql = "SELECT * FROM vagas WHERE aberta = 1";

Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(sql);

%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<title>Sistema de controle de vagas de empregos - Abertas</title>
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
          <a class="nav-link" aria-current="page" href="index.jsp">Cadastrar</a>

       <li class="nav-item ">
          <a class="nav-link active" href="vagas_abertas.jsp"  role="button">
           Vagas Abertas
          </a>
         
        </li>
        </ul>
    </div>
  </div>
</nav>

	<div class="container">
	  <h2 class="mt-5">Vagas em Aberto</h2>
 <div class="list-group mt-5">
 <% 
while(rs.next())
		{	
			%>
			<div  class="list-group-item">
			<%=rs.getString("descricao") %>
			
			<a href="alterar_vaga.jsp?id=<%=rs.getString("idVaga")%>">Editar</a>
			<a href="deletar.jsp?id=<%=rs.getString("idVaga")%>">Excluir</a>
			</div>	
			 <%
		}
 conn.close();
%>
	   
	  </div>
	</div>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
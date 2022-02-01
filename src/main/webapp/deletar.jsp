<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="vagaService.vagas.Vagas" %>
    
    <%String id = request.getParameter("id"); %>
    
    <%
    
    Vagas vagaClass = new Vagas();
    
    vagaClass.excluir(id);
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deletar</title>
</head>
<h3>Vaga excluida com sucesso!</h3>
<body>

</body>
</html>
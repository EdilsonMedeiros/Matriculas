<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="br.com.matriculas.model.Funcionario"%>
    <%@page import ="br.com.matriculas.dao.DaoFuncionario"%>
    <%@page import ="br.com.matriculas.model.Usuario"%>
    <%@page import ="br.com.matriculas.dao.DaoUsuario"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	try{
	String login = request.getParameter("cUsuario");
	String senha = request.getParameter("cSenha");
	int idFunc = Integer.parseInt(request.getParameter("seleFunc"));
	
	Funcionario lfunc = DaoFuncionario.localizarFuncionarioPorCodigo(idFunc);
	
	Usuario usu = new Usuario();
	usu.setUsuario(login);
	usu.setSenha(senha);
	usu.setFuncionario(lfunc);
	
	DaoUsuario.inserirUsuario(usu);
	
	response.sendRedirect("outputUsuario.jsp");
	}catch (IOException e) {%>
		<script>
		alert("Não a conexão com o banco de dados!");
		window.location.href = "http://localhost:8080/ControleMatriculas/cdtUsuario.jsp";
		</script>
	<%}catch (Exception e) {%>
	<script>
	alert("Erro Não identificado!");
	window.location.href = "http://localhost:8080/ControleMatriculas/cdtUsuario.jsp";
	</script> %>
	<%} %>
</body>
</html>
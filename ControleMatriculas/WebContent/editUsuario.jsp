<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="br.com.matriculas.model.Funcionario"%>
    <%@page import ="br.com.matriculas.dao.DaoFuncionario"%>
    <%@page import ="br.com.matriculas.model.Usuario"%>
    <%@page import ="br.com.matriculas.dao.DaoUsuario"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	int idUsuario = Integer.parseInt(request.getParameter("id"));
	String login = request.getParameter("cUsuario");
	String senha = request.getParameter("cSenha");
	int idFunc = Integer.parseInt(request.getParameter("seleFunc"));
	
	Funcionario lfunc = DaoFuncionario.localizarFuncionarioPorCodigo(idFunc);
	
	Usuario usu = DaoUsuario.localizarUsuarioPorCodigo(idUsuario);
	usu.setUsuario(login);
	usu.setSenha(senha);
	usu.setFuncionario(lfunc);
	
	DaoUsuario.editarUsuario(usu);
	
	response.sendRedirect("outputUsuario.jsp");
	%>
</body>
</html>
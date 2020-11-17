<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.text.SimpleDateFormat"%>
	<%@page import="java.util.Date"%>
<%@page import="br.com.matriculas.model.Professor"%>
<%@page import="br.com.matriculas.dao.DaoProfessor"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalhes do Professor</title>
<link href="css/estilo.css" rel="stylesheet">
</head>
<body>
	<%
		int idProfessor = Integer.parseInt(request.getParameter("id"));

		Professor professor = DaoProfessor.localizarProfessorPorCodigo(idProfessor);
		
		SimpleDateFormat fd = new SimpleDateFormat("dd/MM/yyyy");
	%>

	<table id="t01">
	<tr><th colspan="2">Detalhes do professor</th></tr>
		<tr><td>Nome do professor</td><td><%=professor.getNome() %></td></tr>
		<tr><td>CPF</td><td><%=professor.getCpf() %></td></tr>
		<tr><td>RG</td><td><%=professor.getRg() %></td></tr>
		<tr><td>Data de Nascimento</td><td><%=fd.format(professor.getDataNasc()) %></td></tr>
		<tr><td>E-mail</td><td><%=professor.getEmail() %></td></tr>
		<tr><td>Telefone</td><td><%=professor.getTelefone1() %></td></tr>
		<tr><td>Celular</td><td><%=professor.getTelefone2() %></td></tr>
		<tr><td>Sexo</td><td><%=professor.getSexo() %></td></tr>
		<tr><td>Cargo</td><td><%=professor.getCargo() %></td></tr>
		<tr><td>CTPS</td><td><%=professor.getCtps() %></td></tr>
		<tr><td>Titulação</td><td><%=professor.getTitulacao() %></td></tr>
		<tr><td>Área de formação</td><td><%=professor.getAreaFormacao() %></td></tr>
		
		<tr><th colspan="2">Detalhes do Endereço</th></tr>
		<tr><td>Cep</td><td><%=professor.getEndereco().getCep() %></td></tr>
		<tr><td>Rua</td><td><%=professor.getEndereco().getRua() %></td></tr>
		<tr><td>Nº</td><td><%=professor.getEndereco().getNumero() %></td></tr>
		<tr><td>Bairro</td><td><%=professor.getEndereco().getBairro() %></td></tr>
		<tr><td>Cidade</td><td><%=professor.getEndereco().getCidade() %></td></tr>
		<tr><td>Estado</td><td><%=professor.getEndereco().getEstado() %></td></tr>
		<tr><td>País</td><td><%=professor.getEndereco().getPais() %></td></tr>
		<tr><td colspan="2"><button>Alterar</button><a href="index.jsp"><button>Sair</button></a></td></tr>
	</table>
</body>
</html>
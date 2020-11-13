<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.text.SimpleDateFormat"%>
	<%@page import="java.util.Date"%>
<%@page import="br.com.matriculas.model.Funcionario"%>
<%@page import="br.com.matriculas.dao.DaoFuncionario"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Detalhes do Funciónario</title>
<link href="css/estilo.css" rel="stylesheet">
</head>
<body>
	<%
		int idFuncionario = Integer.parseInt(request.getParameter("id"));

		Funcionario funcionario = DaoFuncionario.localizarFuncionarioPorCodigo(idFuncionario);
		
		SimpleDateFormat fd = new SimpleDateFormat("dd/MM/yyyy");
	%>

	<table id="t01">
	<tr><th colspan="2">Detalhes do funcionario</th></tr>
		<tr><td>Nome do Funcionário</td><td><%=funcionario.getNome() %></td></tr>
		<tr><td>CPF</td><td><%=funcionario.getCpf() %></td></tr>
		<tr><td>RG</td><td><%=funcionario.getRg() %></td></tr>
		<tr><td>Data de Nascimento</td><td><%=fd.format(funcionario.getDataNasc()) %></td></tr>
		<tr><td>E-mail</td><td><%=funcionario.getEmail() %></td></tr>
		<tr><td>Telefone</td><td><%=funcionario.getTelefone1() %></td></tr>
		<tr><td>Celular</td><td><%=funcionario.getTelefone2() %></td></tr>
		<tr><td>Sexo</td><td><%=funcionario.getSexo() %></td></tr>
		<tr><td>Cargo</td><td><%=funcionario.getCargo() %></td></tr>
		<tr><td>CTPS</td><td><%=funcionario.getCtps() %></td></tr>
		<tr><td>Titulação</td><td><%=funcionario.getTitulacao() %></td></tr>
		
		<tr><th colspan="2">Detalhes do Endereço</th></tr>
		<tr><td>Cep</td><td><%=funcionario.getEndereco().getCep() %></td></tr>
		<tr><td>Rua</td><td><%=funcionario.getEndereco().getRua() %></td></tr>
		<tr><td>Nº</td><td><%=funcionario.getEndereco().getNumero() %></td></tr>
		<tr><td>Bairro</td><td><%=funcionario.getEndereco().getBairro() %></td></tr>
		<tr><td>Cidade</td><td><%=funcionario.getEndereco().getCidade() %></td></tr>
		<tr><td>Estado</td><td><%=funcionario.getEndereco().getEstado() %></td></tr>
		<tr><td>País</td><td><%=funcionario.getEndereco().getPais() %></td></tr>
		<tr><td colspan="2"><button>Alterar</button><a href="index.jsp"><button>Sair</button></a></td></tr>
	</table>
</body>
</html>
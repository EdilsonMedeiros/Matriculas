<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.text.SimpleDateFormat"%>
	<%@page import="java.util.Date"%>
<%@page import="br.com.matriculas.model.Matricula"%>
<%@page import="br.com.matriculas.dao.DaoMatricula"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Detalhes da Matrícula</title>
<!-- Estilos extras -->
  <link href="css/estilo.css" rel="stylesheet">
</head>
<body>
	<%
		int idMatricula = Integer.parseInt(request.getParameter("id"));

		Matricula matricula = DaoMatricula.localizarMatriculaPorCodigo(idMatricula);
		
		SimpleDateFormat fd = new SimpleDateFormat("dd/MM/yyyy");
	%>

	<table id="t01">
	<tr><th colspan="2">Detalhes do Aluno</th></tr>
		<tr><td>Nome do Aluno</td><td><%=matricula.getAluno().getNome() %></td></tr>
		<tr><td>CPF</td><td><%=matricula.getAluno().getCpf() %></td></tr>
		<tr><td>RG</td><td><%=matricula.getAluno().getRg() %></td></tr>
		<tr><td>Data de Nascimento</td><td><%=fd.format(matricula.getAluno().getDataNasc()) %></td></tr>
		<tr><td>E-mail</td><td><%=matricula.getAluno().getEmail() %></td></tr>
		<tr><td>Telefone</td><td><%=matricula.getAluno().getTelefone1() %></td></tr>
		<tr><td>Celular</td><td><%=matricula.getAluno().getTelefone2() %></td></tr>
		<tr><td>Sexo</td><td><%=matricula.getAluno().getSexo() %></td></tr>
		<tr><th colspan="2">Detalhes da Matricula</th></tr>
		<tr><td>Status da Matrícula</td><td><%=matricula.getStatusmatricula() %></td></tr>
		<tr><td>Data da Matrícula</td><td><%=fd.format(matricula.getDataMatricula()) %></td></tr>
		<tr><td>Turma</td><td><%=matricula.getTurma().getNome()+"-"+matricula.getTurma().getSerie().getAno()+"-"+matricula.getTurma().getTurno().getStatus()%></td></tr>
		<tr><th colspan="2">Detalhes do Endereço</th></tr>
		<tr><td>Cep</td><td><%=matricula.getAluno().getEndereco().getCep() %></td></tr>
		<tr><td>Rua</td><td><%=matricula.getAluno().getEndereco().getRua() %></td></tr>
		<tr><td>Nº</td><td><%=matricula.getAluno().getEndereco().getNumero() %></td></tr>
		<tr><td>Bairro</td><td><%=matricula.getAluno().getEndereco().getBairro() %></td></tr>
		<tr><td>Cidade</td><td><%=matricula.getAluno().getEndereco().getCidade() %></td></tr>
		<tr><td>Estado</td><td><%=matricula.getAluno().getEndereco().getEstado() %></td></tr>
		<tr><td>País</td><td><%=matricula.getAluno().getEndereco().getPais() %></td></tr>
		<tr><th colspan="2">Detalhes do Responsável</th></tr>
		<tr><td>Nome</td><td><%=matricula.getAluno().getResponsavel().getNome() %></td></tr>
		<tr><td>CPF</td><td><%=matricula.getAluno().getResponsavel().getCpf() %></td></tr>
		<tr><td>RG</td><td><%=matricula.getAluno().getResponsavel().getRg() %></td></tr>
		<tr><td>Data de Nascimento</td><td><%=fd.format(matricula.getAluno().getResponsavel().getDataNasc()) %></td></tr>
		<tr><td>E-mail</td><td><%=matricula.getAluno().getResponsavel().getEmail() %></td></tr>
		<tr><td>Telefone</td><td><%=matricula.getAluno().getResponsavel().getTelefone1() %></td></tr>
		<tr><td>Celular</td><td><%=matricula.getAluno().getResponsavel().getTelefone2() %></td></tr>
		<tr><td>Sexo</td><td><%=matricula.getAluno().getResponsavel().getSexo() %></td></tr>
		<tr><td>Parentesco</td><td><%=matricula.getAluno().getResponsavel().getParentesco() %></td></tr>
		<tr><th colspan="2">Funcionário</th></tr>
		<tr><td colspan="2"><button>Alterar</button><a href="index.jsp"><button>Sair</button></a></td></tr>
	</table>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="br.com.matriculas.model.Matricula"%>
<%@page import="br.com.matriculas.dao.DaoMatricula"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>

<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Sistema de Controle de Matrículas</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/scrolling-nav.css" rel="stylesheet">

<!-- Estilos extras -->
<link href="css/estilo.css" rel="stylesheet">

</head>

<body id="page-top">
	<jsp:include page="header.jsp"></jsp:include>
	<section id="matriculas">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mx-auto">
					<%
						int idMatricula = Integer.parseInt(request.getParameter("id"));

						Matricula matricula = DaoMatricula.localizarMatriculaPorCodigo(idMatricula);

						SimpleDateFormat fd = new SimpleDateFormat("dd/MM/yyyy");
					%>

					<table id="t01">
						<tr>
							<th colspan="2">Detalhes do Aluno</th>
						</tr>
						<tr>
							<td>Nome do Aluno</td>
							<td><%=matricula.getAluno().getNome()%></td>
						</tr>
						<tr>
							<td>CPF</td>
							<td><%=matricula.getAluno().getCpf()%></td>
						</tr>
						<tr>
							<td>RG</td>
							<td><%=matricula.getAluno().getRg()%></td>
						</tr>
						<tr>
							<td>Data de Nascimento</td>
							<td><%=fd.format(matricula.getAluno().getDataNasc())%></td>
						</tr>
						<tr>
							<td>E-mail</td>
							<td><%=matricula.getAluno().getEmail()%></td>
						</tr>
						<tr>
							<td>Telefone</td>
							<td><%=matricula.getAluno().getTelefone1()%></td>
						</tr>
						<tr>
							<td>Celular</td>
							<td><%=matricula.getAluno().getTelefone2()%></td>
						</tr>
						<tr>
							<td>Sexo</td>
							<td><%=matricula.getAluno().getSexo()%></td>
						</tr>
						<tr>
							<th colspan="2">Detalhes da Matricula</th>
						</tr>
						<tr>
							<td>Status da Matrícula</td>
							<td><%=matricula.getStatusmatricula()%></td>
						</tr>
						<tr>
							<td>Data da Matrícula</td>
							<td><%=fd.format(matricula.getDataMatricula())%></td>
						</tr>
						<tr>
							<td>Turma</td>
							<td><%=matricula.getTurma().getNome() + "-" + matricula.getTurma().getSerie().getAno() + "-"
					+ matricula.getTurma().getTurno().getStatus()%></td>
						</tr>
						<tr>
							<th colspan="2">Detalhes do Endereço</th>
						</tr>
						<tr>
							<td>Cep</td>
							<td><%=matricula.getAluno().getEndereco().getCep()%></td>
						</tr>
						<tr>
							<td>Rua</td>
							<td><%=matricula.getAluno().getEndereco().getRua()%></td>
						</tr>
						<tr>
							<td>Nº</td>
							<td><%=matricula.getAluno().getEndereco().getNumero()%></td>
						</tr>
						<tr>
							<td>Bairro</td>
							<td><%=matricula.getAluno().getEndereco().getBairro()%></td>
						</tr>
						<tr>
							<td>Cidade</td>
							<td><%=matricula.getAluno().getEndereco().getCidade()%></td>
						</tr>
						<tr>
							<td>Estado</td>
							<td><%=matricula.getAluno().getEndereco().getEstado()%></td>
						</tr>
						<tr>
							<td>País</td>
							<td><%=matricula.getAluno().getEndereco().getPais()%></td>
						</tr>
						<tr>
							<th colspan="2">Detalhes do Responsável</th>
						</tr>
						<tr>
							<td>Nome</td>
							<td><%=matricula.getAluno().getResponsavel().getNome()%></td>
						</tr>
						<tr>
							<td>CPF</td>
							<td><%=matricula.getAluno().getResponsavel().getCpf()%></td>
						</tr>
						<tr>
							<td>RG</td>
							<td><%=matricula.getAluno().getResponsavel().getRg()%></td>
						</tr>
						<tr>
							<td>Data de Nascimento</td>
							<td><%=fd.format(matricula.getAluno().getResponsavel().getDataNasc())%></td>
						</tr>
						<tr>
							<td>E-mail</td>
							<td><%=matricula.getAluno().getResponsavel().getEmail()%></td>
						</tr>
						<tr>
							<td>Telefone</td>
							<td><%=matricula.getAluno().getResponsavel().getTelefone1()%></td>
						</tr>
						<tr>
							<td>Celular</td>
							<td><%=matricula.getAluno().getResponsavel().getTelefone2()%></td>
						</tr>
						<tr>
							<td>Sexo</td>
							<td><%=matricula.getAluno().getResponsavel().getSexo()%></td>
						</tr>
						<tr>
							<td>Parentesco</td>
							<td><%=matricula.getAluno().getResponsavel().getParentesco()%></td>
						</tr>
						<tr>
							<th colspan="2">Funcionário</th>
						</tr>
						<tr>
							<td colspan="2"><a href="formEditFuncionario.jsp?id=<%=matricula.getId()%>"><button class="acoes">
											<img src="_imagens/066-edit-1.png" alt="editar">
										</button></a>
								<a href="outputMatricula.jsp"><button class="acoes" type="button"><img alt="cancelar" src="_imagens/cancel.png"></button></a></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom JavaScript for this theme -->
	<script src="js/scrolling-nav.js"></script>

</body>

</html>
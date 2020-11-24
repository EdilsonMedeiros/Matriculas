<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="br.com.matriculas.model.Professor"%>
<%@page import="br.com.matriculas.dao.DaoProfessor"%>
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
						int idProfessor = Integer.parseInt(request.getParameter("id"));

						Professor professor = DaoProfessor.localizarProfessorPorCodigo(idProfessor);

						SimpleDateFormat fd = new SimpleDateFormat("dd/MM/yyyy");
					%>

					<table id="t01">
						<tr>
							<th colspan="2">Detalhes do professor</th>
						</tr>
						<tr>
							<td>Nome do professor</td>
							<td><%=professor.getNome()%></td>
						</tr>
						<tr>
							<td>CPF</td>
							<td><%=professor.getCpf()%></td>
						</tr>
						<tr>
							<td>RG</td>
							<td><%=professor.getRg()%></td>
						</tr>
						<tr>
							<td>Data de Nascimento</td>
							<td><%=fd.format(professor.getDataNasc())%></td>
						</tr>
						<tr>
							<td>E-mail</td>
							<td><%=professor.getEmail()%></td>
						</tr>
						<tr>
							<td>Telefone</td>
							<td><%=professor.getTelefone1()%></td>
						</tr>
						<tr>
							<td>Celular</td>
							<td><%=professor.getTelefone2()%></td>
						</tr>
						<tr>
							<td>Sexo</td>
							<td><%=professor.getSexo()%></td>
						</tr>
						<tr>
							<td>Cargo</td>
							<td><%=professor.getCargo()%></td>
						</tr>
						<tr>
							<td>CTPS</td>
							<td><%=professor.getCtps()%></td>
						</tr>
						<tr>
							<td>Titulação</td>
							<td><%=professor.getTitulacao()%></td>
						</tr>
						<tr>
							<td>Área de formação</td>
							<td><%=professor.getAreaFormacao()%></td>
						</tr>

						<tr>
							<th colspan="2">Detalhes do Endereço</th>
						</tr>
						<tr>
							<td>Cep</td>
							<td><%=professor.getEndereco().getCep()%></td>
						</tr>
						<tr>
							<td>Rua</td>
							<td><%=professor.getEndereco().getRua()%></td>
						</tr>
						<tr>
							<td>Nº</td>
							<td><%=professor.getEndereco().getNumero()%></td>
						</tr>
						<tr>
							<td>Bairro</td>
							<td><%=professor.getEndereco().getBairro()%></td>
						</tr>
						<tr>
							<td>Cidade</td>
							<td><%=professor.getEndereco().getCidade()%></td>
						</tr>
						<tr>
							<td>Estado</td>
							<td><%=professor.getEndereco().getEstado()%></td>
						</tr>
						<tr>
							<td>País</td>
							<td><%=professor.getEndereco().getPais()%></td>
						</tr>
						<tr>
							<td colspan="2"><a href="formEditFuncionario.jsp?id=<%=professor.getId()%>"><button class="acoes">
											<img src="_imagens/066-edit-1.png" alt="editar">
										</button></a>
								<a href="outputProfessor.jsp"><button class="acoes" type="button"><img alt="cancelar" src="_imagens/cancel.png"></button></a></td>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="br.com.matriculas.model.Funcionario"%>
<%@page import="br.com.matriculas.dao.DaoFuncionario"%>
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
						int idFuncionario = Integer.parseInt(request.getParameter("id"));

						Funcionario funcionario = DaoFuncionario.localizarFuncionarioPorCodigo(idFuncionario);

						SimpleDateFormat fd = new SimpleDateFormat("dd/MM/yyyy");
					%>

					<table id="t01">
						<tr>
							<th colspan="2">Detalhes do funcionario</th>
						</tr>
						<tr>
							<td>Nome do Funcionário</td>
							<td><%=funcionario.getNome()%></td>
						</tr>
						<tr>
							<td>CPF</td>
							<td><%=funcionario.getCpf()%></td>
						</tr>
						<tr>
							<td>RG</td>
							<td><%=funcionario.getRg()%></td>
						</tr>
						<tr>
							<td>Data de Nascimento</td>
							<td><%=fd.format(funcionario.getDataNasc())%></td>
						</tr>
						<tr>
							<td>E-mail</td>
							<td><%=funcionario.getEmail()%></td>
						</tr>
						<tr>
							<td>Telefone</td>
							<td><%=funcionario.getTelefone1()%></td>
						</tr>
						<tr>
							<td>Celular</td>
							<td><%=funcionario.getTelefone2()%></td>
						</tr>
						<tr>
							<td>Sexo</td>
							<td><%=funcionario.getSexo()%></td>
						</tr>
						<tr>
							<td>Cargo</td>
							<td><%=funcionario.getCargo()%></td>
						</tr>
						<tr>
							<td>CTPS</td>
							<td><%=funcionario.getCtps()%></td>
						</tr>
						<tr>
							<td>Titulação</td>
							<td><%=funcionario.getTitulacao()%></td>
						</tr>

						<tr>
							<th colspan="2">Detalhes do Endereço</th>
						</tr>
						<tr>
							<td>Cep</td>
							<td><%=funcionario.getEndereco().getCep()%></td>
						</tr>
						<tr>
							<td>Rua</td>
							<td><%=funcionario.getEndereco().getRua()%></td>
						</tr>
						<tr>
							<td>Nº</td>
							<td><%=funcionario.getEndereco().getNumero()%></td>
						</tr>
						<tr>
							<td>Bairro</td>
							<td><%=funcionario.getEndereco().getBairro()%></td>
						</tr>
						<tr>
							<td>Cidade</td>
							<td><%=funcionario.getEndereco().getCidade()%></td>
						</tr>
						<tr>
							<td>Estado</td>
							<td><%=funcionario.getEndereco().getEstado()%></td>
						</tr>
						<tr>
							<td>País</td>
							<td><%=funcionario.getEndereco().getPais()%></td>
						</tr>
						<tr>
							<td colspan="2"><a href="formEditFuncionario.jsp?id=<%=funcionario.getId()%>"><button class="acoes">
											<img src="_imagens/066-edit-1.png" alt="editar">
										</button></a>
								<a href="outputFuncionario.jsp"><button class="acoes" type="button"><img alt="cancelar" src="_imagens/cancel.png"></button></a></td>
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
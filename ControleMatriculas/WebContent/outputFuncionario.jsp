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
				<a href="cdtFuncionario.jsp"><button><img src="_imagens/144-add-file.png" alt="novo"></button></a>
					<table id="t01">
						<thead>
							<tr>
								<th>Id</th>
								<th>Nome</th>
								<th>E-mail</th>
								<th>Telefone</th>
								<th>Celular</th>
								<th>Cargo</th>
								<th>Titulacao</th>
								<th>Ações</th>
							</tr>
						</thead>
						<tbody>
							<%
								for (Funcionario f : DaoFuncionario.listarFuncionario()) {
							%>
							<tr>
								<td><%=f.getId()%></td>
								<td><%=f.getNome()%></td>
								<td><%=f.getEmail()%></td>
								<td><%=f.getTelefone1()%></td>
								<td><%=f.getTelefone2()%></td>
								<td><%=f.getCargo()%></td>
								<td><%=f.getTitulacao()%></td>
								<td><a href="formEditFuncionario.jsp?id=<%=f.getId()%>"><button class="acoes">
											<img src="_imagens/066-edit-1.png" alt="editar">
										</button></a> <a href="detailFuncionario.jsp?id=<%=f.getId()%>"><button class="acoes">
											<img src="_imagens/146-notebook.png" alt="detalhar">
										</button></a></td>
							</tr>
							<%
								}
							%>


						</tbody>
						<tfoot></tfoot>
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
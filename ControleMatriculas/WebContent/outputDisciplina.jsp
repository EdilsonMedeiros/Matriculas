<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import ="br.com.matriculas.model.Disciplina"%>
    <%@page import ="br.com.matriculas.dao.DaoDisciplina"%>
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
				<a href="cdtDisciplina.jsp"><button><img src="_imagens/144-add-file.png" alt="novo"></button></a>
					<table id="t01">
						<thead>
							<tr>
								<th>Id</th>
								<th>Disciplina</th>
								<th>Carga Horária</th>
								<th>Ementa</th>
								<th>Professor</th>
								<th>Série</th>
								<th>Ações</th>
							</tr>
						</thead>
						<tbody>
							<% for(Disciplina d:DaoDisciplina.listarDisciplina()){%>
							<tr>
								<td><%= d.getId()%></td>
								<td><%= d.getNome() %></td>
								<td><%= d.getCargaHoraria() %></td>
								<td><%= d.getEmenta() %></td>
								<td><%= d.getProfessor().getNome() %></td>
								<td><%= d.getSerie().getAno() %></td>
								<td><a href="formEditDisciplina.jsp?id=<%=d.getId()%>"><button class="acoes">
											<img src="_imagens/066-edit-1.png" alt="editar">
										</button></a></td>
							</tr>
							<%}%>

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
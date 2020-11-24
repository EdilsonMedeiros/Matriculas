<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="br.com.matriculas.dao.DaoProfessor"%>
<%@page import="br.com.matriculas.model.Professor"%>
<%@page import="br.com.matriculas.dao.DaoSerie"%>
<%@page import="br.com.matriculas.model.Serie"%>
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
					<fieldset>
						<legend>Cadastrar Uma Nova Disciplina</legend>
						<form action="inputDisciplina.jsp">
							<label for="sDisciplina">Nome</label> <input type="text"
								name="cDisciplina" id="sDisciplina" maxlength="30" /><br /> <label
								for="sCargaHoraria">Carga Horária</label> <input type="number"
								name="cCargaHoraria" id="sCargaHoraria" size="5" maxlength="4" /><br />
							<label>Ementa</label>
							<textarea rows="" cols="" name="cEmenta" id="sEmenta">
	</textarea>
							<br /> <label>Selecione um Professor</label> <select
								name="seleProf" id="ProfSele">
								<%
									for (Professor pr : DaoProfessor.listarProfessor()) {
								%>
								<option value="<%=pr.getId()%>"><%=pr.getNome()%></option>
								<%
									}
								%>
							</select><br /> <label>Selecione uma Série</label> <select
								name="seleSerie" id="SerieSele">
								<%
									for (Serie se : DaoSerie.listarSerie()) {
								%>
								<option value="<%=se.getId()%>"><%=se.getAno() + "º ano"%></option>
								<%
									}
								%>
							</select><br />
							<button class="acoes" type="submit"><img alt="salvar" src="_imagens/083-floppy-disk.png"> </button>
							<button class="acoes" type="reset"><img alt="apagar" src="_imagens/017-paint-brush.png"></button>
							<a href="outputDisciplina.jsp"><button class="acoes" type="button"><img alt="cancelar" src="_imagens/cancel.png"></button></a>
						</form>
					</fieldset>
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
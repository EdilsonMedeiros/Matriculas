<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="br.com.matriculas.model.Turma"%>
<%@page import="br.com.matriculas.dao.DaoTurma"%>
<%@page import="br.com.matriculas.model.Turno"%>
<%@page import="br.com.matriculas.model.PeriodoLetivo"%>
<%@page import="br.com.matriculas.dao.DaoPeriodoLetivo"%>
<%@page import="br.com.matriculas.model.Serie"%>
<%@page import="br.com.matriculas.dao.DaoSerie"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
						int id = Integer.parseInt(request.getParameter("id"));
						Turma t = DaoTurma.localizarTurmaPorCodigo(id);
					%>

					<fieldset>
						<legend>Alterar Turma</legend>
						<form action="editTurma.jsp">
							<input type="hidden" name="id" value="<%=t.getId()%>" /> <label
								for="sNomet">Nome da Turma</label> <input type="text"
								name="cNomeT" id="sNomeT" maxlength="10"
								value="<%=t.getNome()%>" /><br /> <label for="sVagas">Nº
								de Vagas</label> <input type="number" name="cVagas" id="sVagas"
								maxlength="5" value="<%=t.getQtdVagas()%>" /><br /> <label
								for="sSala">Sala</label> <input type="number" name="cSala"
								id="sSala" maxlength="5" value="<%=t.getSala()%>" /><br /> <label>Escolha
								um Turno</label> <select name="seleTurno" id="turnoSele">
								<option <% if((t.getTurno().toString()).equals(Turno.MATUTINO.toString())){out.println("selected");} %> value="<%=Turno.MATUTINO.toString()%>"><%=Turno.MATUTINO.toString()%></option>
								<option <% if((t.getTurno().toString()).equals(Turno.VESPERTINO.toString())){out.println("selected");} %> value="<%=Turno.VESPERTINO.toString()%>"><%=Turno.VESPERTINO.toString()%></option>
								<option <% if((t.getTurno().toString()).equals(Turno.NOTURNO.toString())){out.println("selected");} %>value="<%=Turno.NOTURNO.toString()%>"><%=Turno.NOTURNO.toString()%></option>
							</select><br /> <label>Escolha um Período Letivo</label> <select
								name="seleLetivo" id="letivoSele">
								<%
									SimpleDateFormat fD = new SimpleDateFormat("dd/MM/yyyy");
									for (PeriodoLetivo pl : DaoPeriodoLetivo.listarPeriodoLetivo()) {
								%>
								<option value="<%=pl.getId()%>"><%="De: " + fD.format(pl.getDataInicio()) + " até: " + fD.format(pl.getDataFim())%></option>
								<%
									}
								%>
							</select><br /> <label>Escolha uma Série</label> <select name="seleSerie"
								id="SerieSele">
								<%
									for (Serie se : DaoSerie.listarSerie()) {
								%>
								<option value="<%=se.getId()%>"><%=se.getAno() + "º ano"%></option>
								<%
									}
								%>
							</select><br />
							<button class="acoes" type="submit"><img alt="salvar" src="_imagens/083-floppy-disk.png"> </button>
							<a href="outputTurma.jsp"><button class="acoes" type="button"><img alt="cancelar" src="_imagens/cancel.png"></button></a>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="br.com.matriculas.model.Usuario"%>
<%@page import="br.com.matriculas.dao.DaoUsuario"%>
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
						int id = Integer.parseInt(request.getParameter("id"));
						Usuario u = DaoUsuario.localizarUsuarioPorCodigo(id);
					%>
					<fieldset>
						<legend>Alterar Usuário</legend>
						<form action="editUsuario.jsp">
							<input type="hidden" name="id" value="<%=u.getId()%>" /> <label
								for="sUsuario"> Usuário</label> <input type="email"
								name="cUsuario" id="sUsuario" maxlength="30"
								value="<%=u.getUsuario()%>" /><br /> <label for="sSenha">
								Senha</label> <input type="password" name="cSenha" id="sSenha"
								maxlength="14" value="<%=u.getSenha()%>" /><br /> <label>Escolha
								um funcionário</label> <select name="seleFunc" id="funcSele">
								<%
									for (Funcionario f : DaoFuncionario.listarFuncionario()) {
								%>
								<option value="<%=f.getId()%>"><%=f.getNome()%></option>
								<%
									}
								%>
							</select><br />
							<button class="acoes" type="submit"><img alt="salvar" src="_imagens/083-floppy-disk.png"> </button>
							<a href="outputUsuario.jsp"><button class="acoes" type="button"><img alt="cancelar" src="_imagens/cancel.png"></button></a>
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
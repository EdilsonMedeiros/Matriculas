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
						int id = Integer.parseInt(request.getParameter("id"));
						Professor p = DaoProfessor.localizarProfessorPorCodigo(id);

						SimpleDateFormat fd = new SimpleDateFormat("dd/MM/yyyy");
					%>
					<fieldset>
						<legend>Alterar Professor</legend>
						<form action="editProfessor.jsp">
							<input type="hidden" name="id" value="<%=p.getId()%>" /> <label
								for="sNomeProf">Nome</label> <input type="text" name="nomeProf"
								id="sNomeProf" size="30" maxlength="40"
								value="<%=p.getNome()%>" /><br /> <label for="sCpfProf">CPF</label>
							<input type="text" name="cpfProf" data-mask="000.000.000-00" size="14"
								maxlength="11" value="<%=p.getCpf()%>" /><br /> <label
								for="srgProf">RG</label> <input type="text" name="rgProf"
								id="sRgProf" size="14" maxlength="20" value="<%=p.getRg()%>" /><br />
							<label for="sNascProf">Data de Nascimento</label> <input
								type="date" name="nascProf" data-mask="00/00/0000" size="10"
								maxlength="12" value="<%=fd.format(p.getDataNasc())%>" /><br />
							<label for="sEmailProf">E-mail</label> <input type="email"
								name="emailProf" id="sEmailProf" size="30" maxlength="40"
								value="<%=p.getEmail()%>" /><br /> <label for="sTelProf">Telefone</label>
							<input type="tel" name="telProf" id="sTelProf" size="12"
								maxlength="12" value="<%=p.getTelefone1()%>" /><br /> <label
								for="sCelProf">Celular</label> <input type="tel" name="celProf"
								id="sCelProf" size="12" maxlength="12"
								value="<%=p.getTelefone2()%>" /><br /> <label for="sCargoProf">Cargo</label>
							<input type="text" name="cargoProf" id="sCargoProf" size="20"
								maxlength="30" value="<%=p.getCargo()%>" /><br /> <label
								for="sCtpsProf">CTPS</label> <input type="number"
								name="ctpsProf" id="sCtpsProf" size="20" maxlength="30"
								value="<%=p.getCtps()%>" /><br /> <label for="sTitulacaoProf">Titulação</label>
							<input type="text" name="titulacaoProf" id="sTitulacaoProf"
								size="20" maxlength="30" value="<%=p.getTitulacao()%>" /><br />
							<label for="sFormacaoProf">Área de Formação</label> <input
								type="text" name="formacaoProf" id="sFormacaoProf" size="20"
								maxlength="30" value="<%=p.getAreaFormacao()%>" /><br />
							<fieldset>
								<input type="radio" id="masculino" name="genero"
									value="masculino"> <label for="masculino">Masculino</label>
								<input type="radio" id="feminino" name="genero" value="feminino">
								<label for="feminino">Feminino</label>
							</fieldset>
							<br>
							<fieldset>
								<legend>Endereço</legend>
								<label for="sCepProf">Cep</label> <input type="text"
									name="cepProf" id="sCepProf" size="10" maxlength="10"
									value="<%=p.getEndereco().getCep()%>" /><br /> <label
									for="sRuaProf">Rua</label> <input type="text" name="ruaProf"
									id="sRuaProf" size="30" maxlength="40"
									value="<%=p.getEndereco().getRua()%>" /><br /> <label
									for="sNumeroProf">Nº</label> <input type="text"
									name="numeroProf" id="sNumeroProf" size="5" maxlength="5"
									value="<%=p.getEndereco().getNumero()%>" /><br /> <label
									for="sBairroProf">Bairro</label> <input type="text"
									name="bairroProf" id="sBairroProf" size="30" maxlength="40"
									value="<%=p.getEndereco().getBairro()%>" /><br /> <label
									for="sCidadeProf">Cidade</label> <input type="text"
									name="cidadeProf" id="sCidadeProf" size="20" maxlength="40"
									value="<%=p.getEndereco().getCidade()%>" /><br /> <label
									for="sEstadoProf">Estado</label> <input type="text"
									name="estadoProf" id="sEstadoProf" size="20" maxlength="40"
									value="<%=p.getEndereco().getEstado()%>" /><br /> <label
									for="sPaisProf">País</label> <input type="text" name="paisProf"
									id="sPaisProf" size="10" maxlength="20"
									value="<%=p.getEndereco().getPais()%>" /><br />
							</fieldset>
							<button class="acoes" type="submit"><img alt="salvar" src="_imagens/083-floppy-disk.png"> </button>
							<a href="outputProfessor.jsp"><button class="acoes" type="button"><img alt="cancelar" src="_imagens/cancel.png"></button></a>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="br.com.matriculas.model.Responsavel"%>
<%@page import="br.com.matriculas.model.Aluno"%>
<%@page import="br.com.matriculas.model.Matricula"%>
<%@page import="br.com.matriculas.dao.DaoMatricula"%>
<%@page import="br.com.matriculas.model.Endereco"%>
<%@page import="br.com.matriculas.model.StatusMatricula"%>
<%@page import="br.com.matriculas.model.Turma"%>
<%@page import="br.com.matriculas.dao.DaoTurma"%>
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

						Matricula m = DaoMatricula.localizarMatriculaPorCodigo(id);

						SimpleDateFormat fd = new SimpleDateFormat("dd/MM/yyyy");
					%>
					<fieldset>
						<legend>Alterar Matrícula</legend>
						<form action="editMatricula.jsp">
							<input type="hidden" name="id" value="<%=m.getId()%>" /><br /> <label
								for="sNomeAluno">Nome do Aluno</label> <input type="text"
								name="nomeAluno" id="sNomeAluno" size="30" maxlength="40"
								value="<%=m.getAluno().getNome()%>" /><br /> <label
								for="sCpfAluno">CPF</label> <input type="text" name="cpfAluno"
								id="sCpfAluno" size="14" maxlength="11"
								value="<%=m.getAluno().getCpf()%>" /><br /> <label
								for="srgAluno">RG</label> <input type="text" name="rgAluno"
								id="sRgAluno" size="14" maxlength="20"
								value="<%=m.getAluno().getRg()%>" /><br /> <label
								for="sNascAluno">Data de Nascimento</label> <input type="date"
								name="nascAluno" id="sNascAluno" size="10" maxlength="12"
								value="<%=fd.format(m.getAluno().getDataNasc())%>" /><br /> <label
								for="sEmailAluno">E-mail</label> <input type="email"
								name="emailAluno" id="sEmailAluno" size="30" maxlength="40"
								value="<%=m.getAluno().getEmail()%>" /><br /> <label
								for="sTelAluno">Telefone</label> <input type="tel"
								name="telAluno" id="sTelAluno" size="12" maxlength="12"
								value="<%=m.getAluno().getTelefone1()%>" /><br /> <label
								for="sCelAluno">Celular</label> <input type="tel"
								name="celAluno" id="sCelAluno" size="12" maxlength="12"
								value="<%=m.getAluno().getTelefone2()%>" /><br />
							<fieldset>
								<input type="radio" id="masculino" name="genero"
									value="masculino"> <label for="masculino">Masculino</label>
								<input type="radio" id="feminino" name="genero" value="feminino">
								<label for="feminino">Feminino</label>
							</fieldset>
							<br>
							<fieldset>
								<label>Status da Matrícula</label> <select name="seleStatus"
									id="StatusSele">
									<option value="<%=StatusMatricula.MATRICULADO.toString()%>"><%=StatusMatricula.MATRICULADO.toString()%></option>
									<option value="<%=StatusMatricula.EXPULSO.toString()%>"><%=StatusMatricula.EXPULSO.toString()%></option>
									<option value="<%=StatusMatricula.PENDENTE.toString()%>"><%=StatusMatricula.PENDENTE.toString()%></option>
									<option value="<%=StatusMatricula.TRANSFERIDO.toString()%>"><%=StatusMatricula.TRANSFERIDO.toString()%></option>
								</select><br /> <label for="sDataMatri">Data da Matrícula</label> <input
									type="date" name="dataMatri" id="sDataMatri" size="12"
									maxlength="12" value="<%=fd.format(m.getDataMatricula())%>" /><br />
								<label>Selecione a Turma</label> <select name="seleTurma"
									id="TurmaSele">
									<%
										for (Turma t : DaoTurma.listarTurma()) {
									%>
									<option value="<%=t.getId()%>"><%=t.getNome() + "-" + t.getSerie().getAno() + "-" + t.getTurno().getStatus()%></option>
									<%
										}
									%>
								</select><br />
							</fieldset>
							<fieldset>
								<legend>Endereço</legend>
								<label for="sCepAluno">Cep</label> <input type="text"
									name="cepAluno" id="sCepAluno" size="10" maxlength="10"
									value="<%=m.getAluno().getEndereco().getCep()%>" /><br /> <label
									for="sRuaAluno">Rua</label> <input type="text" name="ruaAluno"
									id="sRuaAluno" size="30" maxlength="40"
									value="<%=m.getAluno().getEndereco().getRua()%>" /><br /> <label
									for="sNumeroAluno">Nº</label> <input type="text"
									name="numeroAluno" id="sNumeroAluno" size="5" maxlength="5"
									value="<%=m.getAluno().getEndereco().getNumero()%>" /><br /> <label
									for="sBairroAluno">Bairro</label> <input type="text"
									name="bairroAluno" id="sBairroAluno" size="30" maxlength="40"
									value="<%=m.getAluno().getEndereco().getBairro()%>" /><br /> <label
									for="sCidadeAluno">Cidade</label> <input type="text"
									name="cidadeAluno" id="sCidadeAluno" size="20" maxlength="40"
									value="<%=m.getAluno().getEndereco().getCidade()%>" /><br /> <label
									for="sEstadoAluno">Estado</label> <input type="text"
									name="estadoAluno" id="sEstadoAluno" size="20" maxlength="40"
									value="<%=m.getAluno().getEndereco().getEstado()%>" /><br /> <label
									for="sPaisAluno">País</label> <input type="text"
									name="paisAluno" id="sPaisAluno" size="10" maxlength="20"
									value="<%=m.getAluno().getEndereco().getPais()%>" /><br />
							</fieldset>
							<fieldset>
								<legend>Responsável</legend>
								<label for="sNomeResp">Nome do Responsavel</label> <input
									type="text" name="nomeResp" id="sNomeResp" size="30"
									maxlength="40"
									value="<%=m.getAluno().getResponsavel().getNome()%>" /><br />
								<label for="sCpfResp">CPF</label> <input type="text"
									name="cpfResp" id="sCpfResp" size="14" maxlength="11"
									value="<%=m.getAluno().getResponsavel().getCpf()%>" /><br /> <label
									for="srgResp">RG</label> <input type="text" name="rgResp"
									id="sRgResp" size="14" maxlength="20"
									value="<%=m.getAluno().getResponsavel().getRg()%>" /><br /> <label
									for="sNascResp">Data de Nascimento</label> <input type="date"
									name="nascResp" id="sNascResp" size="10" maxlength="12"
									value="<%=fd.format(m.getAluno().getResponsavel().getDataNasc())%>" /><br />
								<label for="sEmailResp">E-mail</label> <input type="email"
									name="emailResp" id="sEmailResp" size="30" maxlength="40"
									value="<%=m.getAluno().getResponsavel().getEmail()%>" /><br />
								<label for="sTelResp">Telefone</label> <input type="tel"
									name="telResp" id="sTelResp" size="12" maxlength="12"
									value="<%=m.getAluno().getResponsavel().getTelefone1()%>" /><br />
								<label for="sCelResp">Celular</label> <input type="tel"
									name="celResp" id="sCelResp" size="12" maxlength="12"
									value="<%=m.getAluno().getResponsavel().getTelefone2()%>" /><br />
								<label for="sParentecoResp">Parentesco</label> <input
									type="text" name="parentescoResp" id="sParentescoResp"
									size="12" maxlength="20"
									value="<%=m.getAluno().getResponsavel().getParentesco()%>" /><br />
								<fieldset>
									<input type="radio" id="masculino" name="genero2"
										value="masculino"> <label for="masculino">Masculino</label>
									<input type="radio" id="feminino" name="genero2"
										value="feminino"> <label for="feminino">Feminino</label>
								</fieldset>
								<br>
							</fieldset>
							<button class="acoes" type="submit"><img alt="salvar" src="_imagens/083-floppy-disk.png"> </button>
							<a href="outputMatricula.jsp"><button class="acoes" type="button"><img alt="cancelar" src="_imagens/cancel.png"></button></a>
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
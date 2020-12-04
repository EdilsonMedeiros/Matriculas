<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
						<legend>Cadastrar Uma Novo Funcionário</legend>
						<form action="inputFuncionario.jsp">
							<label for="sNomeFunc">Nome</label> <input type="text"
								name="nomeFunc" id="sNomeFunc" size="30" maxlength="40" /><br />
							<label for="sCpfFunc">CPF</label> <input type="text"
								name="cpfFunc" data-mask="000.000.000-00" size="14" maxlength="11" /><br /> <label
								for="srgFunc">RG</label> <input type="text" name="rgFunc"
								 size="14" maxlength="20" /><br /> <label
								for="sNascFunc">Data de Nascimento</label> <input type="date"
								name="nascFunc" data-mask="00/00/0000" size="10" maxlength="12" /><br />
							<label for="sEmailFunc">E-mail</label> <input type="email"
								name="emailFunc" id="sEmailFunc" size="30" maxlength="40" /><br />
							<label for="sTelFunc">Telefone</label> <input type="tel"
								name="telFunc" id="sTelFunc" size="12" maxlength="12" /><br /> <label
								for="sCelFunc">Celular</label> <input type="tel" name="celFunc"
								id="sCelFunc" size="12" maxlength="12" /><br /> <label
								for="sCargoFunc">Cargo</label> <input type="text"
								name="cargoFunc" id="sCargoFunc" size="20" maxlength="30" /><br />
							<label for="sCtpsFunc">CTPS</label> <input type="number"
								name="ctpsFunc" id="sCtpsFunc" size="20" maxlength="30" /><br />
							<label for="sTitulacaoFunc">Titulação</label> <input type="text"
								name="titulacaoFunc" id="sTitulacaoFunc" size="20"
								maxlength="30" /><br />
							<fieldset>
								<input type="radio" id="masculino" name="genero"
									value="masculino"> <label for="masculino">Masculino</label>
								<input type="radio" id="feminino" name="genero" value="feminino">
								<label for="feminino">Feminino</label>
							</fieldset>
							<br>
							<fieldset>
								<legend>Endereço</legend>
								<label for="sCepFunc">Cep</label> <input type="text"
									name="cepFunc" id="sCepFunc" size="10" maxlength="10" /><br />
								<label for="sRuaFunc">Rua</label> <input type="text"
									name="ruaFunc" id="sRuaFunc" size="30" maxlength="40" /><br />
								<label for="sNumeroFunc">Nº</label> <input type="text"
									name="numeroFunc" id="sNumeroFunc" size="5" maxlength="5" /><br />
								<label for="sBairroFunc">Bairro</label> <input type="text"
									name="bairroFunc" id="sBairroFunc" size="30" maxlength="40" /><br />
								<label for="sCidadeFunc">Cidade</label> <input type="text"
									name="cidadeFunc" id="sCidadeFunc" size="20" maxlength="40" /><br />
								<label for="sEstadoFunc">Estado</label> <input type="text"
									name="estadoFunc" id="sEstadoFunc" size="20" maxlength="40" /><br />
								<label for="sPaisFunc">País</label> <input type="text"
									name="paisFunc" id="sPaisFunc" size="10" maxlength="20" /><br />
							</fieldset>
							<button class="acoes" type="submit"><img alt="salvar" src="_imagens/083-floppy-disk.png"> </button>
							<button class="acoes" type="reset"><img alt="apagar" src="_imagens/017-paint-brush.png"></button>
							<a href="outputFuncionario.jsp"><button class="acoes" type="button"><img alt="cancelar" src="_imagens/cancel.png"></button></a>
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
	
	 <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <!-- jQuery Mask -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.js"></script>

</body>

</html>
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
						<legend>Cadastrar Um Novo Período Letivo</legend>
						<form action="inputAnoLetivo.jsp" method="get">
							<label for="sInicio">Data de Início</label> <input type="text"
								name="cInicio" class="data" /><br /> <label for="sFim">Data
								de Término</label> <input type="text" name="cFim" class="data" /><br />
							<button class="acoes" type="submit"><img alt="salvar" src="_imagens/083-floppy-disk.png"> </button>
							<button class="acoes" type="reset"><img alt="apagar" src="_imagens/017-paint-brush.png"></button>
							<a href="outputAnoLetivo.jsp"><button class="acoes" type="button"><img alt="cancelar" src="_imagens/cancel.png"></button></a>
						</form>
					</fieldset>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript">
		$(".data").mask("99/99/9999");
	
	</script>
	

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom JavaScript for this theme -->
	<script src="js/scrolling-nav.js"></script>
	
</body>

</html>
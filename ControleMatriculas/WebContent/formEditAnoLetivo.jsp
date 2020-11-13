<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="br.com.matriculas.model.PeriodoLetivo"%>
<%@page import="br.com.matriculas.dao.DaoPeriodoLetivo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		int idAno = Integer.parseInt(request.getParameter("id"));

		PeriodoLetivo periodo = DaoPeriodoLetivo.localizarPeriodoLetivoPorCodigo(idAno);
		
		SimpleDateFormat fd = new SimpleDateFormat("dd/MM/yyyy");
	%>

	<fieldset>
		<legend>Alterar Período Letivo</legend>
		<form action="editAnoLetivo.jsp" method="get">
			<input type="hidden" name="id" value="<%=periodo.getId()%>"/><br />
			<label for="sInicio">Data de Início</label> 
			<input type="date" name="cInicio" id="sInicio" value="<%=fd.format(periodo.getDataInicio()) %>"/><br /> 
			<label for="sFim">Data de Término</label> 
			<input type="date" name="cFim" id="sFim" value="<%=fd.format(periodo.getDataFim()) %>"/><br />
			<button type="submit">Salvar</button>
			<button type="button">Cancelar</button>
		</form>
	</fieldset>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="br.com.matriculas.model.Turma"%>
    <%@page import ="br.com.matriculas.dao.DaoTurma"%>
    <%@page import ="br.com.matriculas.model.Turno"%>
    <%@page import ="br.com.matriculas.model.PeriodoLetivo"%>
    <%@page import ="br.com.matriculas.dao.DaoPeriodoLetivo"%>
    <%@page import ="br.com.matriculas.model.Serie"%>
    <%@page import ="br.com.matriculas.dao.DaoSerie"%>
    <%@page import="java.text.SimpleDateFormat"%>
	<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		Turma t = DaoTurma.localizarTurmaPorCodigo(id);
	%>
	
 <fieldset>
   <legend>Alterar Turma</legend>
<form action="editTurma.jsp">
	<input type="hidden" name="id" value="<%=t.getId() %>"/>
	<label for="sNomet">Nome da Turma</label>
	<input type="text" name="cNomeT" id="sNomeT" maxlength="10" value="<%=t.getNome() %>"/><br/>
	<label for="sVagas">Nº de Vagas</label>
	<input type="number" name="cVagas" id="sVagas" maxlength="5" value="<%=t.getQtdVagas() %>"/><br/>
	<label for="sSala">Sala</label>
	<input type="number" name="cSala" id="sSala" maxlength="5" value="<%=t.getSala() %>"/><br/>
	<label>Escolha um Turno</label>
	<select name="seleTurno" id="turnoSele">
		<option value="<%=Turno.MATUTINO.toString()%>"><%=Turno.MATUTINO.toString()%></option>
		<option value="<%=Turno.VESPERTINO.toString()%>"><%=Turno.VESPERTINO.toString()%></option>
		<option value="<%=Turno.NOTURNO.toString()%>"><%=Turno.NOTURNO.toString()%></option>
	</select><br/>
	<label>Escolha um Período Letivo</label>
	<select name="seleLetivo" id="letivoSele">
	<%
		SimpleDateFormat fD = new SimpleDateFormat("dd/MM/yyyy");
	for(PeriodoLetivo pl: DaoPeriodoLetivo.listarPeriodoLetivo()){ %>
		<option value="<%=pl.getId()%>"><%="De: "+fD.format(pl.getDataInicio())+" até: "+fD.format(pl.getDataFim())%></option>
		<%}%>
	</select><br/>
	<label>Escolha uma Série</label>
	<select name="seleSerie" id="SerieSele">
	<% for(Serie se: DaoSerie.listarSerie()){ %>
		<option value="<%=se.getId()%>"><%=se.getAno()+"º ano"%></option>
		<%} %>
	</select><br/>
	<button type="submit">Salvar</button>
	<button type="button">Cancelar</button>
</form>
</fieldset>

</body>
</html>
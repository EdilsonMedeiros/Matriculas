<%@page import="javax.swing.text.PlainView"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="br.com.matriculas.model.Turno"%>
    <%@page import ="br.com.matriculas.model.PeriodoLetivo"%>
    <%@page import ="br.com.matriculas.dao.DaoPeriodoLetivo"%>
    <%@page import ="br.com.matriculas.model.Serie"%>
    <%@page import ="br.com.matriculas.dao.DaoSerie"%>
    <%@page import="java.text.SimpleDateFormat"%>
	<%@page import="java.util.Date"%>
 <fieldset>
   <legend>Cadastrar Uma Nova Turma</legend>
<form action="inputTurma.jsp">
	<label for="sNomet">Nome da Turma</label>
	<input type="text" name="cNomeT" id="sNomeT" maxlength="10"/><br/>
	<label for="sVagas">Nº de Vagas</label>
	<input type="number" name="cVagas" id="sVagas" maxlength="5"/><br/>
	<label for="sSala">Sala</label>
	<input type="number" name="cSala" id="sSala" maxlength="5"/><br/>
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
	<button type="reset">Apagar</button>
	<button type="button">Cancelar</button>
</form>
</fieldset>
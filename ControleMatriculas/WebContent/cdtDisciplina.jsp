<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="br.com.matriculas.dao.DaoProfessor"%>
    <%@page import ="br.com.matriculas.model.Professor"%>
    <%@page import ="br.com.matriculas.dao.DaoSerie"%>
    <%@page import ="br.com.matriculas.model.Serie"%>
   <fieldset>
   <legend>Cadastrar Uma Nova Disciplina</legend>
<form action="inputDisciplina.jsp">
	<label for="sDisciplina">Nome</label>
	<input type="text" name="cDisciplina" id="sDisciplina" maxlength="30"/><br/>
	<label for="sCargaHoraria">Carga Horária</label>
	<input type="number" name="cCargaHoraria" id="sCargaHoraria" size="5" maxlength="4"/><br/>
	<label>Ementa</label>
	<textarea rows="" cols="" name="cEmenta" id="sEmenta">
	</textarea><br/>
	<label>Selecione um Professor</label>
	<select name="seleProf" id="ProfSele">
		<%for(Professor pr: DaoProfessor.listarProfessor()){ %>
		<option value="<%=pr.getId()%>"><%=pr.getNome()%></option>
		<%} %>
	</select><br/>
	<label>Selecione uma Série</label>
	<select name="seleSerie" id="SerieSele">
		<%for(Serie se: DaoSerie.listarSerie()){ %>
		<option value="<%=se.getId()%>"><%=se.getAno()+"º ano"%></option>
		<%} %>
	</select><br/>
	<button type="submit">Salvar</button>
	<button type="reset">Apagar</button>
	<button type="button">Cancelar</button>
</form>
</fieldset>
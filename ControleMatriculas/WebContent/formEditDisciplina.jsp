<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="br.com.matriculas.dao.DaoSerie"%>
    <%@page import ="br.com.matriculas.model.Serie"%>
     <%@page import ="br.com.matriculas.dao.DaoProfessor"%>
    <%@page import ="br.com.matriculas.model.Professor"%>
    <%@page import ="br.com.matriculas.model.Disciplina"%>
    <%@page import ="br.com.matriculas.dao.DaoDisciplina"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% int id = Integer.parseInt(request.getParameter("id"));
		Disciplina d = DaoDisciplina.localizarDisciplinaPorCodigo(id);
	%>
	
	<fieldset>
   <legend>Alterar Disciplina</legend>
<form action="editDisciplina.jsp">
	<input type="hidden" name="id" maxlength="30" value="<%=d.getId()%>"/><br/>
	<label for="sDisciplina">Nome</label>
	<input type="text" name="cDisciplina" id="sDisciplina" maxlength="30" value ="<%=d.getNome()%>"/><br/>
	<label for="sCargaHoraria">Carga Horária</label>
	<input type="number" name="cCargaHoraria" id="sCargaHoraria" size="5" maxlength="4" value ="<%=d.getCargaHoraria()%>"/><br/>
	<label>Ementa</label>
	<textarea rows="" cols="" name="cEmenta" id="sEmenta" value ="<%=d.getEmenta()%>">
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
	<button type="button">Cancelar</button>
</form>
</fieldset>
</body>
</html>
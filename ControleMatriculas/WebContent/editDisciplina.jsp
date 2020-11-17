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
	<%
	int idDisciplina = Integer.parseInt(request.getParameter("id"));
	String nomeDisc = request.getParameter("cDisciplina");
	int cargaHoraria = Integer.parseInt(request.getParameter("cCargaHoraria"));
	String ementa = request.getParameter("cEmenta");
	int idProf = Integer.parseInt(request.getParameter("seleProf"));
	int idSerie = Integer.parseInt(request.getParameter("seleSerie"));
	
	Professor lProf = DaoProfessor.localizarProfessorPorCodigo(idProf);
	Serie lSerie = DaoSerie.localizarSeriePorCodigo(idSerie);
	
	Disciplina disci = DaoDisciplina.localizarDisciplinaPorCodigo(idDisciplina);
	disci.setNome(nomeDisc);
	disci.setCargaHoraria(cargaHoraria);
	disci.setEmenta(ementa);
	disci.setProfessor(lProf);
	disci.setSerie(lSerie);
	
	DaoDisciplina.editarDisciplina(disci);
	
	response.sendRedirect("outputDisciplina.jsp");
	%>

</body>
</html>
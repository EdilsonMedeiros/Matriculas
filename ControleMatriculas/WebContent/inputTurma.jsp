<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="br.com.matriculas.model.Turno"%>
    <%@page import ="br.com.matriculas.model.Turma"%>
    <%@page import ="br.com.matriculas.dao.DaoTurma"%>
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
	int vagas = Integer.parseInt(request.getParameter("cVagas"));
	int sala = Integer.parseInt(request.getParameter("cSala"));
	Turno turno = Turno.valueOf(request.getParameter("seleTurno"));
	int periodo = Integer.parseInt(request.getParameter("seleLetivo"));
	int serie = Integer.parseInt(request.getParameter("seleSerie"));
	
	PeriodoLetivo peri = DaoPeriodoLetivo.localizarPeriodoLetivoPorCodigo(periodo);
	Serie seri = DaoSerie.localizarSeriePorCodigo(serie);
	
	Turma turm = new Turma();
	turm.setQtdVagas(vagas);
	turm.setSala(sala);
	turm.setTurno(turno);
	turm.setPeriodoLetivo(peri);
	turm.setSerie(seri);
	
	DaoTurma.inserirTurma(turm);
	response.sendRedirect("outputTurma.jsp");
	%>
</body>
</html>
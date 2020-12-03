<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import ="br.com.matriculas.model.Turno"%>
    <%@page import ="br.com.matriculas.model.Turma"%>
    <%@page import ="br.com.matriculas.dao.DaoTurma"%>
    <%@page import ="br.com.matriculas.model.PeriodoLetivo"%>
    <%@page import ="br.com.matriculas.dao.DaoPeriodoLetivo"%>
    <%@page import ="br.com.matriculas.model.Serie"%>
    <%@page import ="br.com.matriculas.dao.DaoSerie"%>
    <%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	try{
	int idTurma = Integer.parseInt(request.getParameter("id"));
	String turma = request.getParameter("cNomeT");
	int vagas = Integer.parseInt(request.getParameter("cVagas"));
	int sala = Integer.parseInt(request.getParameter("cSala"));
	String turno = request.getParameter("seleTurno");
	int periodo = Integer.parseInt(request.getParameter("seleLetivo"));
	int serie = Integer.parseInt(request.getParameter("seleSerie"));
	
	PeriodoLetivo peri = DaoPeriodoLetivo.localizarPeriodoLetivoPorCodigo(periodo);
	Serie seri = DaoSerie.localizarSeriePorCodigo(serie);
	Turno.valueOf(turno);	
	
	Turma turm = DaoTurma.localizarTurmaPorCodigo(idTurma);
	turm.setNome(turma);
	turm.setQtdVagas(vagas);
	turm.setSala(sala);
	turm.setTurno(Turno.valueOf(turno));
	turm.setPeriodoLetivo(peri);
	turm.setSerie(seri);
	
	DaoTurma.editarTurma(turm);
	response.sendRedirect("outputTurma.jsp");
	}catch(java.lang.NumberFormatException e){%>
		<script>
		alert("Você digitou algum dado de forma incorreta");
		window.location.href = "http://localhost:8080/ControleMatriculas/formEditTurma.jsp";
		</script>
	<%}catch (IOException e) {%>
		<script>
		alert("Não a conexão com o banco de dados!");
		window.location.href = "http://localhost:8080/ControleMatriculas/formEditTurma.jsp";
		</script>
	<%}catch (Exception e) {%>
	<script>
	alert("Erro Não identificado!");
	window.location.href = "http://localhost:8080/ControleMatriculas/formEditTurma.jsp";
	</script> %>
	<%} %>
</body>
</html>
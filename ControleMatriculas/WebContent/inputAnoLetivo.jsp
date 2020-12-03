<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.text.SimpleDateFormat"%>
	<%@page import="java.util.Date"%>
    <%@page import ="br.com.matriculas.model.PeriodoLetivo"%>
    <%@page import ="br.com.matriculas.dao.DaoPeriodoLetivo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	try{
	String dataInicial = request.getParameter("cInicio");
	String dataTermino = request.getParameter("cFim");
	
	SimpleDateFormat formatoData = new SimpleDateFormat("dd/MM/yyyy");
	Date dataN = formatoData.parse(dataInicial);
	Date dataN2 = formatoData.parse(dataTermino);
	PeriodoLetivo pele = new PeriodoLetivo(dataN,dataN2);
	
	DaoPeriodoLetivo.inserirPeriodoLetivo(pele);
	
	response.sendRedirect("outputAnoLetivo.jsp");
	}catch(java.text.ParseException e){%>
		<script>
		alert("Você digitou algum dado de forma incorreta");
		window.location.href = "http://localhost:8080/ControleMatriculas/cdtAnoLetivo.jsp";
		</script>
	<%}catch (IOException e) {%>
		<script>
		alert("Não a conexão com o banco de dados!");
		window.location.href = "http://localhost:8080/ControleMatriculas/cdtAnoLetivo.jsp";
		</script>
	<%}catch (Exception e) {%>
	<script>
	alert("Erro Não identificado!");
	window.location.href = "http://localhost:8080/ControleMatriculas/cdtAnoLetivo.jsp";
	</script> %>
	<%} %>
</body>
</html>
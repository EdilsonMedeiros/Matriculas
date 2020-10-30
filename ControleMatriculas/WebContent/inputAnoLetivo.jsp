<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.text.SimpleDateFormat"%>
	<%@page import="java.util.Date"%>
    <%@page import ="br.com.matriculas.model.PeriodoLetivo"%>
    <%@page import ="br.com.matriculas.dao.DaoPeriodoLetivo"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String dataInicial = request.getParameter("cInicio");
	String dataTermino = request.getParameter("cFim");
	
	SimpleDateFormat formatoData = new SimpleDateFormat("dd/MM/yyyy");
	Date dataN = formatoData.parse(dataInicial);
	Date dataN2 = formatoData.parse(dataTermino);
	PeriodoLetivo pele = new PeriodoLetivo(dataN,dataN2);
	
	DaoPeriodoLetivo.inserirPeriodoLetivo(pele);
	
	response.sendRedirect("outputAnoLetivo.jsp");
	%>
</body>
</html>
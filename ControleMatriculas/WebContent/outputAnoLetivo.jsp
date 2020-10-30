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
	<table>
		<thead>
			<tr>
				<th>Id</th>
				<th>Data de Início</th>
				<th>Data de Término</th>
			</tr>
		</thead>
		<tbody>
			<% 
			SimpleDateFormat formatoData = new SimpleDateFormat("dd/MM/yyyy");
			for(PeriodoLetivo p:DaoPeriodoLetivo.listarPeriodoLetivo()){
				out.println("<tr>");
				out.println("<td>"+ p.getId() +"</td>");
				out.println("<td>"+ formatoData.format(p.getDataInicio()) +"</td>");
				out.println("<td>"+ formatoData.format(p.getDataFim()) +"</td>");
			out.println("</tr>");
			}
			
			%>
			
		</tbody>
		<tfoot></tfoot>
	</table>
</body>
</html>
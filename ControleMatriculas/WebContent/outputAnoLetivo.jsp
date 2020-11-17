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
	<table>
		<thead>
			<tr>
				<th>Id</th>
				<th>Data de Início</th>
				<th>Data de Término</th>
				<th>Ações</th>
			</tr>
		</thead>
		<tbody>
			<% 
			SimpleDateFormat formatoData = new SimpleDateFormat("dd/MM/yyyy");
			for(PeriodoLetivo p:DaoPeriodoLetivo.listarPeriodoLetivo()){%>
				<tr>
				<td><%=p.getId()%></td>
				<td><%=formatoData.format(p.getDataInicio())%></td>
				<td><%=formatoData.format(p.getDataFim())%></td>
				<td>
				<a href="formEditAnoLetivo.jsp?id=<%=p.getId()%>"><button><img src="_imagens/066-edit-1.png" alt="editar"></button></a>
				</td>
			</tr>
			<%}%>
			
			%>
			
		</tbody>
		<tfoot></tfoot>
	</table>
</body>
</html>
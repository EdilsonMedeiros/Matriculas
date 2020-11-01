<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.text.SimpleDateFormat"%>
    <%@page import ="br.com.matriculas.model.Turma"%>
    <%@page import ="br.com.matriculas.dao.DaoTurma"%>
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
				<th>Nome</th>
				<th>Nº Vagas</th>
				<th>Sala</th>
				<th>Turno</th>
				<th>Período Letivo</th>
				<th>Série</th>
			</tr>
		</thead>
		<tbody>
			<% 
			SimpleDateFormat fd = new SimpleDateFormat("dd/MM/yyyy");
			for(Turma t:DaoTurma.listarTurma()){
				out.println("<tr>");
				out.println("<td>"+ t.getId() +"</td>");
				out.println("<td>"+ t.getNome() +"</td>");
				out.println("<td>"+ t.getQtdVagas() +"</td>");
				out.println("<td>"+ t.getSala() +"</td>");
				out.println("<td>"+ t.getTurno().getStatus() +"</td>");
				out.println("<td>"+ fd.format(t.getPeriodoLetivo().getDataInicio())+"-"+ fd.format(t.getPeriodoLetivo().getDataFim()) +"</td>");
				out.println("<td>"+ t.getSerie().getAno() +"º</td>");
			out.println("</tr>");
			}
			
			%>
			
		</tbody>
		<tfoot></tfoot>
	</table>
		

</body>
</html>
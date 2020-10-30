<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import ="br.com.matriculas.model.Disciplina"%>
    <%@page import ="br.com.matriculas.dao.DaoDisciplina"%>
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
				<th>Disciplina</th>
				<th>Carga Horária</th>
				<th>Ementa</th>
				<th>Professor</th>
				<th>Série</th>
			</tr>
		</thead>
		<tbody>
			<% for(Disciplina d:DaoDisciplina.listarDisciplina()){
				out.println("<tr>");
				out.println("<td>"+ d.getId() +"</td>");
				out.println("<td>"+ d.getNome() +"</td>");
				out.println("<td>"+ d.getCargaHoraria() +" horas</td>");
				out.println("<td>"+ d.getEmenta() +"</td>");
				out.println("<td>"+ d.getProfessor().getNome() +"</td>");
				out.println("<td>"+ d.getSerie().getAno() +"º</td>");
			out.println("</tr>");
			}
			
			%>
			
		</tbody>
		<tfoot></tfoot>
	</table>
</body>
</html>
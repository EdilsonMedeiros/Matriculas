<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="br.com.matriculas.model.Matricula"%>
    <%@page import ="br.com.matriculas.dao.DaoMatricula"%>
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
				<th>Aluno</th>
				<th>Status da Matr�cula</th>
				<th>Respons�vel</th>
				<th>Turma</th>
				<th>Sala</th>
				<th>S�rie</th>
				<th>Turno</th>
			</tr>
		</thead>
		<tbody>
			<% for(Matricula m:DaoMatricula.listarMatricula()){
				out.println("<tr>");
				out.println("<td>"+ m.getId() +"</td>");
				out.println("<td>"+ m.getAluno().getNome() +"</td>");
				out.println("<td>"+ m.getStatusmatricula() +"</td>");
				out.println("<td>"+ m.getAluno().getResponsavel().getNome() +"</td>");
				out.println("<td>"+ m.getTurma().getNome() +"</td>");
				out.println("<td>"+ m.getTurma().getSala() +"</td>");
				out.println("<td>"+ m.getTurma().getSerie().getAno() +" � ano </td>");
				out.println("<td>"+ m.getTurma().getTurno().getStatus() +"</td>");
			out.println("</tr>");
			}
			
			%>
			
		</tbody>
		<tfoot></tfoot>
	</table>
	
</body>
</html>
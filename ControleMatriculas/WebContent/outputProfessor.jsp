<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.text.SimpleDateFormat"%>
	<%@page import="java.util.Date"%>
     <%@page import ="br.com.matriculas.model.Professor"%>
    <%@page import ="br.com.matriculas.dao.DaoProfessor"%>
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
				<th>Nome</th>
				<th>E-mail</th>
				<th>Telefone</th>
				<th>Celular</th>
				<th>Cargo</th>
				<th>Titulação</th>
				<th>Formação</th>
			</tr>
		</thead>
		<tbody>
			<% for(Professor p:DaoProfessor.listarProfessor()){
				out.println("<tr>");
				out.println("<td>"+ p.getId() +"</td>");
				out.println("<td>"+ p.getNome() +"</td>");
				out.println("<td>"+ p.getEmail() +"</td>");
				out.println("<td>"+ p.getTelefone1() +"</td>");
				out.println("<td>"+ p.getTelefone2() +"</td>");
				out.println("<td>"+ p.getCargo() +"</td>");
				out.println("<td>"+ p.getTitulacao() +"</td>");
				out.println("<td>"+ p.getAreaFormacao() +"</td>");
				
			out.println("</tr>");
			}
			
			%>
			
		</tbody>
		<tfoot></tfoot>
	</table>
</body>
</html>
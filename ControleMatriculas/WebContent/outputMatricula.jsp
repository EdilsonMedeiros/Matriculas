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
	<table id="t01">
		<thead>
			<tr>
				<th>Id</th>
				<th>Aluno</th>
				<th>Status da Matr�cula</th>
				<th>Turma</th>
				<th>Sala</th>
				<th>S�rie</th>
				<th>Turno</th>
				<th>A��es</th>
			</tr>
		</thead>
		<tbody>
			<% for(Matricula m:DaoMatricula.listarMatricula()){%>
				<tr>
				<td><%= m.getId() %></td>
				<td><%= m.getAluno().getNome() %></td>
				<td><%= m.getStatusmatricula() %></td>
				<td><%= m.getTurma().getNome() %></td>
				<td><%= m.getTurma().getSala() %></td>
				<td><%= m.getTurma().getSerie().getAno()%>� ano </td>
				<td><%= m.getTurma().getTurno().getStatus()%> </td>
				<td>
				<a href="formEditMatricula.jsp?id=<%=m.getId()%>"><button><img src="_imagens/066-edit-1.png" alt="editar"></button></a>
				<a href="detailMatricula.jsp?id=<%=m.getId()%>"><button><img src="_imagens/146-notebook.png" alt="detalhar"></button></a>
				</td>
				</tr>
			<%}%>
			
		</tbody>
		<tfoot></tfoot>
	</table>
	
</body>
</html>
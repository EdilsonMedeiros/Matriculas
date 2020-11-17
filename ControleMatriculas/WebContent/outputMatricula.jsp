<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="br.com.matriculas.model.Matricula"%>
    <%@page import ="br.com.matriculas.dao.DaoMatricula"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id="t01">
		<thead>
			<tr>
				<th>Id</th>
				<th>Aluno</th>
				<th>Status da Matrícula</th>
				<th>Turma</th>
				<th>Sala</th>
				<th>Série</th>
				<th>Turno</th>
				<th>Ações</th>
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
				<td><%= m.getTurma().getSerie().getAno()%>º ano </td>
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
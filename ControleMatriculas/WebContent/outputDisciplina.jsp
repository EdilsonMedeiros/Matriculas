<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import ="br.com.matriculas.model.Disciplina"%>
    <%@page import ="br.com.matriculas.dao.DaoDisciplina"%>
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
				<th>Disciplina</th>
				<th>Carga Horária</th>
				<th>Ementa</th>
				<th>Professor</th>
				<th>Série</th>
			</tr>
		</thead>
		<tbody>
			<% for(Disciplina d:DaoDisciplina.listarDisciplina()){%>
				<tr>
				<td><%= d.getId()%></td>
				<td><%= d.getNome() %></td>
				<td><%= d.getCargaHoraria() %></td>
				<td><%= d.getEmenta() %></td>
				<td><%= d.getProfessor().getNome() %></td>
				<td><%= d.getSerie().getAno() %></td>
				<td>
				<a href="formEditDisciplina.jsp?id=<%=d.getId()%>"><button><img src="_imagens/066-edit-1.png" alt="editar"></button></a>
				</td>
			</tr>
			<%}%>
			
		</tbody>
		<tfoot></tfoot>
	</table>
</body>
</html>
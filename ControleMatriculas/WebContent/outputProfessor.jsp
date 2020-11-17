<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<th>Ações</th>
			</tr>
		</thead>
		<tbody>
			<% for(Professor p:DaoProfessor.listarProfessor()){%>
				<tr>
				<td><%= p.getId() %></td>
				<td><%= p.getNome() %></td>
				<td><%= p.getEmail() %></td>
				<td><%= p.getTelefone1() %></td>
				<td><%= p.getTelefone2() %></td>
				<td><%= p.getCargo() %></td>
				<td><%= p.getTitulacao() %></td>
				<td><%= p.getAreaFormacao() %></td>
				<td>
				<a href="formEditProfessor.jsp?id=<%=p.getId()%>"><button><img src="_imagens/066-edit-1.png" alt="editar"></button></a>
				<a href="detailProfessor.jsp?id=<%=p.getId()%>"><button><img src="_imagens/146-notebook.png" alt="detalhar"></button></a>
				</td>
				</tr>
			<%}%>
		</tbody>
		<tfoot></tfoot>
	</table>
</body>
</html>
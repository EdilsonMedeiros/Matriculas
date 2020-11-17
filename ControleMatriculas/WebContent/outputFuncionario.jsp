<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.text.SimpleDateFormat"%>
	<%@page import="java.util.Date"%>
     <%@page import ="br.com.matriculas.model.Funcionario"%>
    <%@page import ="br.com.matriculas.dao.DaoFuncionario"%>
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
				<th>Nome</th>
				<th>E-mail</th>
				<th>Telefone</th>
				<th>Celular</th>
				<th>Cargo</th>
				<th>Titulacao</th>
				<th>Ações</th>
			</tr>
		</thead>
		<tbody>
			<% for(Funcionario f:DaoFuncionario.listarFuncionario()){%>
				<tr>
				<td><%= f.getId() %></td>
				<td><%= f.getNome() %></td>
				<td><%= f.getEmail() %></td>
				<td><%= f.getTelefone1() %></td>
				<td><%= f.getTelefone2() %></td>
				<td><%= f.getCargo() %></td>
				<td><%= f.getTitulacao() %></td>
				<td>
				<a href="formEditFuncionario.jsp?id=<%=f.getId()%>"><button><img src="_imagens/066-edit-1.png" alt="editar"></button></a>
				<a href="detailFuncionario.jsp?id=<%=f.getId()%>"><button><img src="_imagens/146-notebook.png" alt="detalhar"></button></a>
				</td>
				</tr>
			<%}%>
			
			
		</tbody>
		<tfoot></tfoot>
	</table>
</body>
</html>
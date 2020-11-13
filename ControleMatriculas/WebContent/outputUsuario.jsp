<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="br.com.matriculas.model.Usuario"%>
    <%@page import ="br.com.matriculas.dao.DaoUsuario"%>
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
				<th>Usu�rio</th>
				<th>Senha</th>
				<th>Funcion�rio</th>
			</tr>
		</thead>
		<tbody>
			<% for(Usuario u:DaoUsuario.listarUsuario()){%>
				<tr>
				<td><%= u.getId() %></td>
				<td><%= u.getUsuario() %></td>
				<td><%= u.getSenha() %></td>
				<td><%= u.getFuncionario().getNome() %></td>
				<td>
				<a href="formEditUsuario.jsp?id=<%=u.getId()%>"><button><img src="_imagens/066-edit-1.png" alt="editar"></button></a>
				</td>
				</tr>
			<%}%>
			
		</tbody>
		<tfoot></tfoot>
	</table>
</body>
</html>
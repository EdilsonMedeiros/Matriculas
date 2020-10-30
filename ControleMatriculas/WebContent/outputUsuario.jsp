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
				<th>Usuário</th>
				<th>Senha</th>
				<th>Funcionário</th>
			</tr>
		</thead>
		<tbody>
			<% for(Usuario u:DaoUsuario.listarUsuario()){
				out.println("<tr>");
				out.println("<td>"+ u.getId() +"</td>");
				out.println("<td>"+ u.getUsuario() +"</td>");
				out.println("<td>"+ u.getSenha() +"</td>");
				out.println("<td>"+ u.getFuncionario().getNome() +"</td>");
			out.println("</tr>");
			}
			
			%>
			
		</tbody>
		<tfoot></tfoot>
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.text.SimpleDateFormat"%>
	<%@page import="java.util.Date"%>
     <%@page import ="br.com.matriculas.model.Funcionario"%>
    <%@page import ="br.com.matriculas.dao.DaoFuncionario"%>
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
				<th>Nome</th>
				<th>E-mail</th>
				<th>Telefone</th>
				<th>Celular</th>
				<th>Cargo</th>
				<th>Titulacao</th>
			</tr>
		</thead>
		<tbody>
			<% for(Funcionario f:DaoFuncionario.listarFuncionario()){
				out.println("<tr>");
				out.println("<td>"+ f.getId() +"</td>");
				out.println("<td>"+ f.getNome() +"</td>");
				out.println("<td>"+ f.getEmail() +"</td>");
				out.println("<td>"+ f.getTelefone1() +"</td>");
				out.println("<td>"+ f.getTelefone2() +"</td>");
				out.println("<td>"+ f.getCargo() +"</td>");
				out.println("<td>"+ f.getTitulacao() +"</td>");
				
			out.println("</tr>");
			}
			
			%>
			
		</tbody>
		<tfoot></tfoot>
	</table>
</body>
</html>
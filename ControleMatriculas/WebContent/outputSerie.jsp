<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import ="br.com.matriculas.model.Serie"%>
    <%@page import ="br.com.matriculas.dao.DaoSerie"%>
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
				<th>Ano</th>
			</tr>
		</thead>
		<tbody>
			<% for(Serie s:DaoSerie.listarSerie()){%>
				<tr>
				<td><%=s.getId() %> </td>
				<td><%=s.getAno()+"º ano"%></td>
				<td>
				<a href="formEditSerie.jsp?id=<%=s.getId()%>"><button><img src="_imagens/066-edit-1.png" alt="editar"></button></a>
				</td>
			</tr>
			<%}%>
			
		</tbody>
		<tfoot></tfoot>
	</table>

</body>
</html>
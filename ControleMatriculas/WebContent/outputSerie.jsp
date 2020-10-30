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
			<% for(Serie s:DaoSerie.listarSerie()){
				out.println("<tr>");
				out.println("<td>"+ s.getId() +"</td>");
				out.println("<td>"+ s.getAno() +" º ano </td>");
			out.println("</tr>");
			}
			
			%>
			
		</tbody>
		<tfoot></tfoot>
	</table>

</body>
</html>
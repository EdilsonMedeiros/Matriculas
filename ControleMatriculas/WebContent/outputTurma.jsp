<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.text.SimpleDateFormat"%>
    <%@page import ="br.com.matriculas.model.Turma"%>
    <%@page import ="br.com.matriculas.dao.DaoTurma"%>
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
				<th>Nº Vagas</th>
				<th>Sala</th>
				<th>Turno</th>
				<th>Período Letivo</th>
				<th>Série</th>
			</tr>
		</thead>
		<tbody>
			<% 
			SimpleDateFormat fd = new SimpleDateFormat("dd/MM/yyyy");
			for(Turma t:DaoTurma.listarTurma()){ %>
				<tr>
				<td><%= t.getId() %></td>
				<td><%= t.getNome() %></td>
				<td><%= t.getQtdVagas() %></td>
				<td><%= t.getSala() %></td>
				<td><%= t.getTurno().getStatus() %></td>
				<td><%= fd.format(t.getPeriodoLetivo().getDataInicio())+"-"+ fd.format(t.getPeriodoLetivo().getDataFim()) %></td>
				<td><%= t.getSerie().getAno() +"º"%></td>
				<td>
				<a href="formEditTurma.jsp?id=<%=t.getId()%>"><button><img src="_imagens/066-edit-1.png" alt="editar"></button></a>
				</td>
				</tr>
			<%}%>
			
		</tbody>
		<tfoot></tfoot>
	</table>
		

</body>
</html>
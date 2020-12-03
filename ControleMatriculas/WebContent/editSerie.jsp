<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="br.com.matriculas.model.Serie"%>
    <%@page import ="br.com.matriculas.dao.DaoSerie"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	try{
	int idSerie = Integer.parseInt(request.getParameter("id"));
	String serie = request.getParameter("cSerie");
	
	Serie ser = DaoSerie.localizarSeriePorCodigo(idSerie);
	ser.setAno(serie);
	
	DaoSerie.editarSerie(ser);
	
	response.sendRedirect("outputSerie.jsp");
	}catch (IOException e) {%>
		<script>
		alert("Não a conexão com o banco de dados!");
		window.location.href = "http://localhost:8080/ControleMatriculas/formEditSerie.jsp";
		</script>
	<%}catch (Exception e) {%>
	<script>
	alert("Erro Não identificado!");
	window.location.href = "http://localhost:8080/ControleMatriculas/formEditSerie.jsp";
	</script> %>
	<%} %>

</body>
</html>
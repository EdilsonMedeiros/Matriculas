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
	String serie = request.getParameter("cSerie");
	
	Serie ser = new Serie(serie);
	
	DaoSerie.inserirSerie(ser);
	
	response.sendRedirect("outputSerie.jsp");
	%>
</body>
</html>
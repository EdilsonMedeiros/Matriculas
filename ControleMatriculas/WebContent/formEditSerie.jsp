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
		int id = Integer.parseInt(request.getParameter("id"));
		Serie s = DaoSerie.localizarSeriePorCodigo(id);
	%>
	
	   <fieldset>
   <legend>Alterar Série</legend>
<form action="editSerie.jsp" method="get">
	<input type="hidden" name="id" value="<%=s.getId() %>"/>
	<input type="text" name="cSerie" id="sSerie" maxlength="10" value="<%=s.getAno() %>"/>
	<button type="submit">Salvar</button>
	<button type="button">Cancelar</button>
</form>
</fieldset>

</body>
</html>
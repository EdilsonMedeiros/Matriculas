<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="br.com.matriculas.model.Usuario"%>
    <%@page import ="br.com.matriculas.dao.DaoUsuario"%>
    <%@page import ="br.com.matriculas.model.Funcionario"%>
    <%@page import ="br.com.matriculas.dao.DaoFuncionario"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		Usuario u = DaoUsuario.localizarUsuarioPorCodigo(id);
	%>
		   <fieldset>
   <legend>Alterar Usuário</legend>
<form action="editUsuario.jsp">
	<input type="hidden" name="id" value="<%= u.getId()%>"/>
	<label for="sUsuario"> Usuário</label>
	<input type="email" name="cUsuario" id="sUsuario" maxlength="30" value="<%= u.getUsuario()%>"/><br/>
	<label for="sSenha"> Senha</label>
	<input type="password" name="cSenha" id="sSenha" maxlength="14" value="<%= u.getSenha()%>"/><br/>
	<label>Escolha um funcionário</label>
	<select name="seleFunc" id="funcSele">
	<%for(Funcionario f: DaoFuncionario.listarFuncionario()){ %>
		<option value="<%=f.getId()%>"><%=f.getNome()%></option>
		<%}%>
	</select><br/>
	<button type="submit">Salvar</button>
	<button type="button">Cancelar</button>
</form>
</fieldset>
</body>
</html>
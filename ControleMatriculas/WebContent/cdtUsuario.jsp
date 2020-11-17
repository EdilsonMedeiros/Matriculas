<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="br.com.matriculas.model.Funcionario"%>
    <%@page import ="br.com.matriculas.dao.DaoFuncionario"%>
   <fieldset>
   <legend>Cadastrar Um Novo Usuário</legend>
<form action="inputUsuario.jsp">
	<label for="sUsuario">Criando Usuário</label>
	<input type="email" name="cUsuario" id="sUsuario" maxlength="30"/><br/>
	<label for="sSenha">Criando Senha</label>
	<input type="password" name="cSenha" id="sSenha" maxlength="14"/><br/>
	<label>Escolha um funcionário</label>
	<select name="seleFunc" id="funcSele">
	<%for(Funcionario f: DaoFuncionario.listarFuncionario()){ %>
		<option value="<%=f.getId()%>"><%=f.getNome()%></option>
		<%}%>
	</select><br/>
	<button type="submit">Salvar</button>
	<button type="reset">Apagar</button>
	<button type="button">Cancelar</button>
</form>
</fieldset>
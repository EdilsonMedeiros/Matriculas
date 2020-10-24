<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <fieldset>
   <legend>Cadastrar Um Novo Usuário</legend>
<form action="#">
	<label for="sUsuario">Criando Usuário</label>
	<input type="email" name="cUsuario" id="sUsuario" maxlength="30"/><br/>
	<label for="sSenha">Criando Senha</label>
	<input type="password" name="cSenha" id="sSenha" maxlength="14"/><br/>
	<label>Escolha um funcionário</label>
	<select name="seleFunc" id="funcSele">
		<option value=""></option>
	</select><br/>
	<button type="submit">Salvar</button>
	<button type="reset">Apagar</button>
	<button type="button">Cancelar</button>
</form>
</fieldset>
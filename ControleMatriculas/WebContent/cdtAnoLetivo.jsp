<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <fieldset>
   <legend>Cadastrar Um Novo Período Letivo</legend>
<form action="inputAnoLetivo.jsp" method="get">
	<label for="sInicio">Data de Início</label>
	<input type="date" name="cInicio" id="sInicio"/><br/>
	<label for="sFim">Data de Término</label>
	<input type="date" name="cFim" id="sFim"/><br/>
	<button type="submit">Salvar</button>
	<button type="reset">Apagar</button>
	<button type="button">Cancelar</button>
</form>
</fieldset>
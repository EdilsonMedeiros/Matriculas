<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <fieldset>
   <legend>Cadastrar Um Novo Per�odo Letivo</legend>
<form action="inputAnoLetivo.jsp" method="get">
	<label for="sInicio">Data de In�cio</label>
	<input type="date" name="cInicio" id="sInicio"/><br/>
	<label for="sFim">Data de T�rmino</label>
	<input type="date" name="cFim" id="sFim"/><br/>
	<button type="submit">Salvar</button>
	<button type="reset">Apagar</button>
	<button type="button">Cancelar</button>
</form>
</fieldset>
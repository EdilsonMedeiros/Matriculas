<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <fieldset>
   <legend>Cadastrar Uma Nova Turma</legend>
<form action="#">
	<label for="sVagas">N� de Vagas</label>
	<input type="number" name="cVagas" id="sVagas" maxlength="5"/><br/>
	<label for="sSala">Sala</label>
	<input type="number" name="cSala" id="sSala" maxlength="5"/><br/>
	<label>Escolha um Turno</label>
	<select name="seleTurno" id="turnoSele">
		<option value=""></option>
	</select><br/>
	<label>Escolha um Per�odo Letivo</label>
	<select name="seleLetivo" id="letivoSele">
		<option value=""></option>
	</select><br/>
	<label>Escolha uma S�rie</label>
	<select name="seleSerie" id="SerieSele">
		<option value=""></option>
	</select><br/>
	<button type="submit">Salvar</button>
	<button type="reset">Apagar</button>
	<button type="button">Cancelar</button>
</form>
</fieldset>
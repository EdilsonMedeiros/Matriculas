<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <fieldset>
   <legend>Cadastrar Uma Nova Disciplina</legend>
<form action="#">
	<label for="sDisciplina">Nome</label>
	<input type="text" name="cDisciplina" id="sDisciplina" maxlength="30"/><br/>
	<label for="sCargaHoraria">Carga Horária</label>
	<input type="number" name="cCargaHoraria" id="sCargaHoraria" size="5" maxlength="4"/><br/>
	<label>Ementa</label>
	<textarea rows="" cols="" name="cEmenta" id="sEmenta">
	</textarea><br/>
	<label>Selecione um Professor</label>
	<select name="seleProf" id="ProfSele">
		<option value=""></option>
	</select><br/>
	<label>Selecione uma Série</label>
	<select name="seleSerie" id="SerieSele">
		<option value=""></option>
	</select><br/>
	<button type="submit">Salvar</button>
	<button type="reset">Apagar</button>
	<button type="button">Cancelar</button>
</form>
</fieldset>
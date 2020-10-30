<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<fieldset>
   <legend>Cadastrar Um Novo Professor</legend>
<form action="inputProfessor.jsp">
	<label for="sNomeProf">Nome</label>
	<input type="text" name="nomeProf" id="sNomeProf" size="30" maxlength="40"/><br/>
	<label for="sCpfProf">CPF</label>
	<input type="text" name="cpfProf" id="sCpfProf" size="14" maxlength="11"/><br/>
	<label for="srgProf">RG</label>
	<input type="text" name="rgProf" id="sRgProf" size="14" maxlength="20"/><br/>
  	<label for="sNascProf">Data de Nascimento</label>
	<input type="date" name="nascProf" id="sNascProf" size="10" maxlength="12"/><br/>
	<label for="sEmailProf">E-mail</label>
	<input type="email" name="emailProf" id="sEmailProf" size="30" maxlength="40"/><br/>
	<label for="sTelProf">Telefone</label>
	<input type="tel" name="telProf" id="sTelProf" size="12" maxlength="12"/><br/>
	<label for="sCelProf">Celular</label>
	<input type="tel" name="celProf" id="sCelProf" size="12" maxlength="12"/><br/>
	<label for="sCargoProf">Cargo</label>
	<input type="text" name="cargoProf" id="sCargoProf" size="20" maxlength="30"/><br/>
	<label for="sCtpsProf">CTPS</label>
	<input type="number" name="ctpsProf" id="sCtpsProf" size="20" maxlength="30"/><br/>
	<label for="sTitulacaoProf">Titulação</label>
	<input type="text" name="titulacaoProf" id="sTitulacaoProf" size="20" maxlength="30"/><br/>
	<label for="sFormacaoProf">Área de Formação</label>
	<input type="text" name="formacaoProf" id="sFormacaoProf" size="20" maxlength="30"/><br/>
	<fieldset>
	<input type="radio" id="masculino" name="genero" value="masculino">
  	<label for="masculino">Masculino</label>
  	<input type="radio" id="feminino" name="genero" value="feminino">
  	<label for="feminino">Feminino</label>
  	</fieldset><br>
	<fieldset>
	<legend>Endereço</legend>
	<label for="sCepProf">Cep</label>
	<input type="text" name="cepProf" id="sCepProf" size="10" maxlength="10"/><br/>
	<label for="sRuaProf">Rua</label>
	<input type="text" name="ruaProf" id="sRuaProf" size="30" maxlength="40"/><br/>
	<label for="sNumeroProf">Nº</label>
	<input type="text" name="numeroProf" id="sNumeroProf" size="5" maxlength="5"/><br/>
	<label for="sBairroProf">Bairro</label>
	<input type="text" name="bairroProf" id="sBairroProf" size="30" maxlength="40"/><br/>
	<label for="sCidadeProf">Cidade</label>
	<input type="text" name="cidadeProf" id="sCidadeProf" size="20" maxlength="40"/><br/>
	<label for="sEstadoProf">Estado</label>
	<input type="text" name="estadoProf" id="sEstadoProf" size="20" maxlength="40"/><br/>
	<label for="sPaisProf">País</label>
	<input type="text" name="paisProf" id="sPaisProf" size="10" maxlength="20"/><br/>	
	</fieldset>
	<button type="submit">Salvar</button>
	<button type="reset">Apagar</button>
	<button type="button">Cancelar</button>
</form>
</fieldset>
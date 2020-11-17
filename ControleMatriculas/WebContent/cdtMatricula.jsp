<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="br.com.matriculas.model.StatusMatricula"%>
    <%@page import ="br.com.matriculas.model.Turma"%>
    <%@page import ="br.com.matriculas.dao.DaoTurma"%>
<fieldset>
   <legend>Matrícula</legend>
<form action="inputMatricula.jsp">
	<label for="sNomeAluno">Nome do Aluno</label>
	<input type="text" name="nomeAluno" id="sNomeAluno" size="30" maxlength="40"/><br/>
	<label for="sCpfAluno">CPF</label>
	<input type="text" name="cpfAluno" id="sCpfAluno" size="14" maxlength="11"/><br/>
	<label for="srgAluno">RG</label>
	<input type="text" name="rgAluno" id="sRgAluno" size="14" maxlength="20"/><br/>
  	<label for="sNascAluno">Data de Nascimento</label>
	<input type="date" name="nascAluno" id="sNascAluno" size="10" maxlength="12"/><br/>
	<label for="sEmailAluno">E-mail</label>
	<input type="email" name="emailAluno" id="sEmailAluno" size="30" maxlength="40"/><br/>
	<label for="sTelAluno">Telefone</label>
	<input type="tel" name="telAluno" id="sTelAluno" size="12" maxlength="12"/><br/>
	<label for="sCelAluno">Celular</label>
	<input type="tel" name="celAluno" id="sCelAluno" size="12" maxlength="12"/><br/>
	<fieldset>
	<input type="radio" id="masculino" name="genero" value="masculino">
  	<label for="masculino">Masculino</label>
  	<input type="radio" id="feminino" name="genero" value="feminino">
  	<label for="feminino">Feminino</label>
  	</fieldset><br>
  	<fieldset>
  	<label>Status da Matrícula</label>
  	<select name="seleStatus" id="StatusSele">
		<option value="<%=StatusMatricula.MATRICULADO.toString()%>"><%=StatusMatricula.MATRICULADO.toString()%></option>
		<option value="<%=StatusMatricula.EXPULSO.toString()%>"><%=StatusMatricula.EXPULSO.toString()%></option>
		<option value="<%=StatusMatricula.PENDENTE.toString()%>"><%=StatusMatricula.PENDENTE.toString()%></option>
		<option value="<%=StatusMatricula.TRANSFERIDO.toString()%>"><%=StatusMatricula.TRANSFERIDO.toString()%></option>
	</select><br/>
	<label for="sDataMatri">Data da Matrícula</label>
	<input type="date" name="dataMatri" id="sDataMatri" size="12" maxlength="12"/><br/>
	<label>Selecione a Turma</label>
  	<select name="seleTurma" id="TurmaSele">
  		<%for(Turma t:DaoTurma.listarTurma()){ %>
		<option value="<%=t.getId()%>"><%=t.getNome()+"-"+t.getSerie().getAno()+"-"+t.getTurno().getStatus()%></option>
		<%}%>
	</select><br/>
	</fieldset>
	<fieldset>
	<legend>Endereço</legend>
	<label for="sCepAluno">Cep</label>
	<input type="text" name="cepAluno" id="sCepAluno" size="10" maxlength="10"/><br/>
	<label for="sRuaAluno">Rua</label>
	<input type="text" name="ruaAluno" id="sRuaAluno" size="30" maxlength="40"/><br/>
	<label for="sNumeroAluno">Nº</label>
	<input type="text" name="numeroAluno" id="sNumeroAluno" size="5" maxlength="5"/><br/>
	<label for="sBairroAluno">Bairro</label>
	<input type="text" name="bairroAluno" id="sBairroAluno" size="30" maxlength="40"/><br/>
	<label for="sCidadeAluno">Cidade</label>
	<input type="text" name="cidadeAluno" id="sCidadeAluno" size="20" maxlength="40"/><br/>
	<label for="sEstadoAluno">Estado</label>
	<input type="text" name="estadoAluno" id="sEstadoAluno" size="20" maxlength="40"/><br/>
	<label for="sPaisAluno">Estado</label>
	<input type="text" name="paisAluno" id="sPaisAluno" size="10" maxlength="20"/><br/>	
	</fieldset>
	<fieldset>
	<legend>Responsável</legend>
	<label for="sNomeResp">Nome do Responsavel</label>
	<input type="text" name="nomeResp" id="sNomeResp" size="30" maxlength="40"/><br/>
	<label for="sCpfResp">CPF</label>
	<input type="text" name="cpfResp" id="sCpfResp" size="14" maxlength="11"/><br/>
	<label for="srgResp">RG</label>
	<input type="text" name="rgResp" id="sRgResp" size="14" maxlength="20"/><br/>
  	<label for="sNascResp">Data de Nascimento</label>
	<input type="date" name="nascResp" id="sNascResp" size="10" maxlength="12"/><br/>
	<label for="sEmailResp">E-mail</label>
	<input type="email" name="emailResp" id="sEmailResp" size="30" maxlength="40"/><br/>
	<label for="sTelResp">Telefone</label>
	<input type="tel" name="telResp" id="sTelResp" size="12" maxlength="12"/><br/>
	<label for="sCelResp">Celular</label>
	<input type="tel" name="celResp" id="sCelResp" size="12" maxlength="12"/><br/>
	<label for="sParentecoResp">Parentesco</label>
	<input type="text" name="parentescoResp" id="sParentescoResp" size="12" maxlength="20"/><br/>
	<fieldset>
	<input type="radio" id="masculino" name="genero2" value="masculino">
  	<label for="masculino">Masculino</label>
  	<input type="radio" id="feminino" name="genero2" value="feminino">
  	<label for="feminino">Feminino</label>
  	</fieldset><br>
	</fieldset>
	<button type="submit">Salvar</button>
	<button type="reset">Apagar</button>
	<a href="index.jsp"><button type="button">Cancelar</button></a>
</form>
</fieldset>
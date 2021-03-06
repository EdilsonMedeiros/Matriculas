<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.text.SimpleDateFormat"%>
	<%@page import="java.util.Date"%>
     <%@page import ="br.com.matriculas.model.Funcionario"%>
    <%@page import ="br.com.matriculas.dao.DaoFuncionario"%>
    <%@page import ="br.com.matriculas.model.Endereco"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	try{
	String nome = request.getParameter("nomeFunc");
	String cpf = request.getParameter("cpfFunc");
	String rg = request.getParameter("rgFunc");
	String sexo = request.getParameter("genero");
	String nasc = request.getParameter("nascFunc");
	String email = request.getParameter("emailFunc");
	String tel = request.getParameter("telFunc");
	String cel = request.getParameter("celFunc");
	String cargo = request.getParameter("cargoFunc");
	String ctps = request.getParameter("ctpsFunc");
	String titu = request.getParameter("titulacaoFunc");
	
	String cep = request.getParameter("cepFunc");
	String rua = request.getParameter("ruaFunc");
	String numero = request.getParameter("numeroFunc");
	String bairro = request.getParameter("bairroFunc");
	String cidade = request.getParameter("cidadeFunc");
	String estado = request.getParameter("estadoFunc");
	String pais = request.getParameter("paisFunc");
	
	Endereco endF = new Endereco(cep,rua,numero,bairro,cidade,estado,pais);
	
	SimpleDateFormat formatoData = new SimpleDateFormat("dd/MM/yyyy");
	Date dataN = formatoData.parse(nasc);
	
	Funcionario func = new Funcionario();
	func.setNome(nome);
	func.setCpf(cpf);
	func.setRg(rg);
	func.setSexo(sexo);
	func.setDataNasc(dataN);
	func.setEmail(email);
	func.setTelefone1(tel);
	func.setTelefone2(cel);
	func.setCargo(cargo);
	func.setCtps(ctps);
	func.setTitulacao(titu);
	func.setEndereco(endF);
	
	
	
	DaoFuncionario.inserirFuncionario(func);
	
	response.sendRedirect("outputFuncionario.jsp");
	}catch(java.text.ParseException e){%>
		<script>
		alert("Você digitou algum dado de forma incorreta");
		window.location.href = "http://localhost:8080/ControleMatriculas/cdtFuncionario.jsp";
		</script>
	<%}catch (IOException e) {%>
		<script>
		alert("Não a conexão com o banco de dados!");
		window.location.href = "http://localhost:8080/ControleMatriculas/cdtFuncionario.jsp";
		</script>
	<%}catch (Exception e) {%>
	<script>
	alert("Erro Não identificado!");
	window.location.href = "http://localhost:8080/ControleMatriculas/cdtFuncionario.jsp";
	</script> %>
	<%} %>
</body>
</html>
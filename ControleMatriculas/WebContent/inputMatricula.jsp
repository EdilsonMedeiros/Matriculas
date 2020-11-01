<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.text.SimpleDateFormat"%>
	<%@page import="java.util.Date"%>
	<%@page import ="br.com.matriculas.model.Responsavel"%>
	<%@page import ="br.com.matriculas.model.Aluno"%>
    <%@page import ="br.com.matriculas.model.Matricula"%>
    <%@page import ="br.com.matriculas.dao.DaoMatricula"%>
    <%@page import ="br.com.matriculas.model.Endereco"%>
    <%@page import ="br.com.matriculas.model.StatusMatricula"%>
    <%@page import ="br.com.matriculas.model.Turma"%>
    <%@page import ="br.com.matriculas.dao.DaoTurma"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String statusMatri = request.getParameter("seleStatus");
	String dataMatri = request.getParameter("dataMatri");
	int turma =Integer.parseInt(request.getParameter("seleTurma"));
	
	String nome = request.getParameter("nomeAluno");
	String cpf = request.getParameter("cpfAluno");
	String rg = request.getParameter("rgAluno");
	String sexo = request.getParameter("genero");
	String nasc = request.getParameter("nascAluno");
	String email = request.getParameter("emailAluno");
	String tel = request.getParameter("telAluno");
	String cel = request.getParameter("celAluno");
	
	String nome2 = request.getParameter("nomeResp");
	String cpf2 = request.getParameter("cpfResp");
	String rg2 = request.getParameter("rgAResp");
	String sexo2 = request.getParameter("genero2");
	String nasc2 = request.getParameter("nascResp");
	String email2 = request.getParameter("emailResp");
	String tel2 = request.getParameter("telResp");
	String cel2 = request.getParameter("celResp");
	String parentesco = request.getParameter("parentescoResp");
	
	String cep = request.getParameter("cepAluno");
	String rua = request.getParameter("ruaAluno");
	String numero = request.getParameter("numeroAluno");
	String bairro = request.getParameter("bairroAluno");
	String cidade = request.getParameter("cidadeAluno");
	String estado = request.getParameter("estadoAluno");
	String pais = request.getParameter("paisAluno");
	
	Endereco endF = new Endereco(cep,rua,numero,bairro,cidade,estado,pais);
	
	SimpleDateFormat fd = new SimpleDateFormat("dd/MM/yyyy");
	Date data1 = fd.parse(nasc);
	Date data2 = fd.parse(nasc2);
	Date data3 = fd.parse(dataMatri);
	
	Responsavel res = new Responsavel();
	res.setNome(nome2);
	res.setCpf(cpf2);
	res.setRg(rg2);
	res.setSexo(sexo2);
	res.setDataNasc(data2);
	res.setEmail(email2);
	res.setTelefone1(tel2);
	res.setTelefone2(cel2);
	res.setParentesco(parentesco);
	res.setEndereco(endF);
	
	Aluno alu = new Aluno();
	alu.setNome(nome);
	alu.setCpf(cpf);
	alu.setRg(rg);
	alu.setSexo(sexo);
	alu.setDataNasc(data1);
	alu.setEmail(email);
	alu.setTelefone1(tel);
	alu.setTelefone2(cel);
	alu.setEndereco(endF);
	alu.setResponsavel(res);
	
	Turma tu = DaoTurma.localizarTurmaPorCodigo(turma);
	
	Matricula matr = new Matricula();
	matr.setStatusmatricula(StatusMatricula.valueOf(statusMatri));
	matr.setDataMatricula(data3);
	matr.setAluno(alu);
	matr.setTurma(tu);
	
	
	DaoMatricula.inserirMatricula(matr);
	
	response.sendRedirect("outputMatricula.jsp");
	%>
</body>
</html>
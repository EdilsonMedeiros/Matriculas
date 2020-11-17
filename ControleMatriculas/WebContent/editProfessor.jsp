<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.text.SimpleDateFormat"%>
    <%@page import="java.util.Date"%>
     <%@page import ="br.com.matriculas.model.Professor"%>
    <%@page import ="br.com.matriculas.dao.DaoProfessor"%>
    <%@page import ="br.com.matriculas.model.Endereco"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
	int idProfessor = Integer.parseInt(request.getParameter("id"));
	String nome = request.getParameter("nomeProf");
	String cpf = request.getParameter("cpfProf");
	String rg = request.getParameter("rgProf");
	String sexo = request.getParameter("genero");
	String nasc = request.getParameter("nascProf");
	String email = request.getParameter("emailProf");
	String tel = request.getParameter("telProf");
	String cel = request.getParameter("celProf");
	String cargo = request.getParameter("cargoProf");
	String ctps = request.getParameter("ctpsProf");
	String titu = request.getParameter("titulacaoProf");
	String form = request.getParameter("formacaoProf");
	
	String cep = request.getParameter("cepProf");
	String rua = request.getParameter("ruaProf");
	String numero = request.getParameter("numeroProf");
	String bairro = request.getParameter("bairroProf");
	String cidade = request.getParameter("cidadeProf");
	String estado = request.getParameter("estadoProf");
	String pais = request.getParameter("paisProf");
	
	Endereco endF = new Endereco(cep,rua,numero,bairro,cidade,estado,pais);
	
	SimpleDateFormat fd = new SimpleDateFormat("dd/MM/yyyy");
	Date dataN = fd.parse(nasc);
	
	Professor prof = DaoProfessor.localizarProfessorPorCodigo(idProfessor);
	prof.setNome(nome);
	prof.setCpf(cpf);
	prof.setRg(rg);
	prof.setSexo(sexo);
	prof.setDataNasc(dataN);
	prof.setEmail(email);
	prof.setTelefone1(tel);
	prof.setTelefone2(cel);
	prof.setCargo(cargo);
	prof.setCtps(ctps);
	prof.setTitulacao(titu);
	prof.setAreaFormacao(form);
	prof.setEndereco(endF);
	
	
	
	DaoProfessor.editarProfessor(prof);
	
	response.sendRedirect("outputProfessor.jsp");
	%>

</body>
</html>
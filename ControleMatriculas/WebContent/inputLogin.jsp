<%@page import="br.com.matriculas.dao.DaoUsuario"%>
<%@page import="br.com.matriculas.model.Usuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	 	String usuario = request.getParameter("username");
		String senha = request.getParameter("password");
		
		Usuario usu = DaoUsuario.localizarUsuarioPorUsuario(usuario);
		
		if(usu != null){
			if(usu.getSenha().equals(senha)){
				session.setAttribute("logado", usu);
				response.sendRedirect("index.jsp");
			}else{%>
			<script>
			alert("Senha incorreta!");
			window.location.href = "http://localhost:8080/ControleMatriculas/login.jsp";
			</script> 
			<%}
				
			}else{%>
			<script>
			alert("Esse usuário não existe!");
			window.location.href = "http://localhost:8080/ControleMatriculas/login.jsp";
			</script> 
			<%}%>

</body>
</html>
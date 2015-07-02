<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.anderson.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Altera Contato</title>
</head>
<body>

	<%
		ContatoDao dao = new ContatoDao();
		Contato c = dao.getContatoById(request.getParameter("id"));
	%>

	<form action="mvc" method="POST">

		Id: <input type="text" name="id" value="<%=c.getId()%>" /> <br />
		Nome: <input type="text" name="nome" value="<%=c.getNome()%>" /> <br />
		Email: <input type="text" name="email" value="<%=c.getEmail()%>" /> <br />
		Endereço: <input type="text" name="endereco"
			value="<%=c.getEndereco()%>" /><br /> Data de Nascimento: <input
			type="text" name="dataNascimento"
			value="<fmt:formatDate
	value="<%=c.getDataNascimento().getTime()%>" pattern="dd/MM/yyyy" /> " />
		<input type="hidden" name="logica" value="AlteraContatoLogic" /> <br />
		<input type="submit" value="Alterar" />

	</form>

</body>
</html>
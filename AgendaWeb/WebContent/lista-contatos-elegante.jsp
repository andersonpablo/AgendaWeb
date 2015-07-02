<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Contatos Elegantes</title>
</head>
<body>


	<!-- cria o DAO -->
	<jsp:useBean id="dao" class="br.com.anderson.servlet.ContatoDao" />
	<table border="1">
		<!-- percorre contatos montando as linhas da tabela -->
		<c:forEach var="contato" items="${dao.lista}">
			<tr>
				<td>${contato.nome}</td>
				<td><c:if test="${not empty contato.email}">
						<a href="mailto:${contato.email}">${contato.email}</a>
					</c:if> <c:if test="${empty contato.email}">
E-mail não informado
</c:if></td>
				<td>${contato.endereco}</td>
				<td><fmt:formatDate value="${contato.dataNascimento.time}"
						pattern="dd/MM/yyyy" /></td>
				<td><a href="remove-contato.jsp?id=${contato.id}"> Remover</a>
				</td>
				<td><a href="altera-contato.jsp?id=${contato.id}">Alterar</a></td>
			</tr>
		</c:forEach>

	</table>

	<a href="adiciona-contato.html">Adicionar </a>


</body>
</html>
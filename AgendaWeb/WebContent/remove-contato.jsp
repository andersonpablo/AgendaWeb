<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.anderson.mvc.logica.*"%>
<%@ page import="br.com.anderson.servlet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		ContatoDao dao = new ContatoDao();
		long id = Long.parseLong(request.getParameter("id"));
		Contato c = new Contato();
		c.setId(id);
		dao.remove(c);
	%>

	<p>
		Contato
		<%=c.getId()%>
		Removido Com Sucesso !
	</p>
</body>
</html>
<%@page import="java.sql.*"%>
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
	String usuario = request.getParameter("usuario");
	String contr = request.getParameter("contr");
	Class.forName("com.mysql.jdbc.Driver");
	try {
		Connection miConeccion = DriverManager.getConnection("jdbc:mysql://sql7.freemysqlhosting.net:3306/sql7623827",
		"sql7623827", "akYVms4umE");
		PreparedStatement miStatementPreparado = miConeccion
		.prepareStatement("SELECT * FROM proyecto_jsp WHERE USUARIO=? AND CONTRASENA=?");
		miStatementPreparado.setString(1, usuario);
		miStatementPreparado.setString(2, contr);
		ResultSet rs = miStatementPreparado.executeQuery();

		if (rs.absolute(1))
			out.println("si");
		else
			out.println("no");

	} catch (Exception e) {
		out.println( e.getMessage());
	}
	%>
</body>
</html>
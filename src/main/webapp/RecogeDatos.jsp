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
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String usuario = request.getParameter("usuario");
	String contr = request.getParameter("contr");
	String pais = request.getParameter("pais");
	String tecno = request.getParameter("tecnologias");

	Class.forName("com.mysql.jdbc.Driver");
	try {
		Connection miConeccion = DriverManager.getConnection("jdbc:mysql://sql7.freemysqlhosting.net:3306/sql7623827",
		"sql7623827", "akYVms4umE");
		Statement miStatement = miConeccion.createStatement();
		String instruccionSQL = "INSERT INTO proyecto_jsp (Nombre, Apellido, Usuario, Contrasena, Pais, Teconologia) VALUES ('"
		+ nombre + "','" + apellido + "','" + usuario + "','" + contr + "','" + pais + "','" + tecno + "')";
		miStatement.executeUpdate(instruccionSQL);
		out.println("si");
	} catch (Exception e) {
		out.println(e.getMessage());
	}
	%>

</body>
</html>
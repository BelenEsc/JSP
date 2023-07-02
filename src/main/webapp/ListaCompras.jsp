<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form name="FormularioCompra" action="ListaCompras.jsp">


		<p>Articulos a compra:</p>
		<p>
			<label><input type="checkbox" name="articulos" value="agua">Agua</label><br>
			<label><input type="checkbox" name="articulos" value="pan">Pan</label><br>
			<label><input type="checkbox" name="articulos" value="leche">leche</label><br>
			<label><input type="checkbox" name="articulos"
				value="pescado">Pescado</label><br> <label><input
				type="checkbox" name="articulos" value="carne">Carne</label><br>
			<label><input type="checkbox" name="articulos" value="tomate">Tomate</label><br>
		</p>
		<p>
			<input type="submit" name="button" id="button" value="Enviar"> 
			<!-- creo que aqui es el name el que se pasa al jsp -->
		</p>
	</form>
	<h2>Carro de compras</h2>
	<ol>
	<%
	String []elementos=	request.getParameterValues("articulos");
	
	if (elementos != null) {
		for (String x : elementos) {
			out.println("<li>"+x+"</li>");
		}
	}
	%>
</ol>

</body>
</html>
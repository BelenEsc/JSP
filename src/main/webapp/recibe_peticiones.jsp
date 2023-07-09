<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	//leer datos de formulario
	String ciudadElegida = request.getParameter("ciudad_destino");

	//crear la cookie
	Cookie cuki = new Cookie("agencia_viajes.ciudad_destino", ciudadElegida);

	//vida de la cuki
	cuki.setMaxAge(500000);

	//enviar a ordenador del usuario apra q se guarde
	response.addCookie(cuki);
	%>

	Enviaste cukis

	<a href="agencia_viajes.jsp"> Ir a la agencia de viajes</a>
</body>
</html>
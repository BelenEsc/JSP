<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 style="text-align: center">Agencia de viajes</h1>
	<%
	//valor por defecto

	String ciudadFav = "LaPaz";

	// lee la cuki de la peticion del navegador

	Cookie[] lasCukis = request.getCookies();

	//buscar las preferencias. ie. ciudad destino
	if (lasCukis != null) {
		for (Cookie cukiTemp : lasCukis) {
			if ("agencia_viajes.ciudad_destino".equals(cukiTemp.getName())) {
		ciudadFav = cukiTemp.getValue();
		break;
			}
		}
	}
	%>
	<h3>
		Vuelos a
		<%=ciudadFav%></h3>
	<p>esto es un texto de ejemplo</p>
</body>
</html>
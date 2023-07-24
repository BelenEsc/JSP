<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="m" %>

<%
String[] alumnos = { "Ana", "Belen", "Carlos", "Dominico" };
pageContext.setAttribute("losAlumnos", alumnos);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<m:forEach var="tempAlumnos" items="${losAlumnos}">
	${tempAlumnos} <br/>
	</m:forEach>
</body>
</html>
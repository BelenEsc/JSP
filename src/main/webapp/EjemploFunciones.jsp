<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="datos" value="Anna, Lopez, direc, 7500" />
	<c:set var="datosArray" value = "${f:split(datos, ',')}"/>
	<input type="text" value="${datosArray[0]}">
	<br />
	<input type="text" value="${datosArray[1]}">
	<br />
	<input type="text" value="${datosArray[2]}">
	<br />
	<input type="text" value="${datosArray[3]}">
	<br />
	<input type="text" value="">
	<br />
	<input type="text" value="">
	<br />
	<input type="text" value="">
	<br />
	<input type="text" value="">
	<br />


</body>
</html>
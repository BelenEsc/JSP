<html>
<body>
	<h2>Usuarios Registrados</h2>

Usuario confirmado: <br>
Nombre: <%=request.getParameter("nombre") %>&nbsp; Apellido <%=request.getParameter("apellido") %><br/><br/>
<jsp:include page="Fecha.jsp"></jsp:include><br/>

</body>


</html>
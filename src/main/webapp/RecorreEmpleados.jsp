<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>
<%@ page import="java.util.*, java.sql.*,belenaprende.com.jsptags.*"%>

<%
ArrayList<Empleado> datos = new ArrayList<>();
Class.forName("com.mysql.jdbc.Driver");
try {
	Connection miConex = DriverManager.getConnection("jdbc:mysql://sql7.freemysqlhosting.net:3306/sql7623827",
	"sql7623827", "akYVms4umE");
	Statement miStat = miConex.createStatement();

	String instruccionSQL2 = "SELECT * FROM empleados";
	ResultSet rs = miStat.executeQuery(instruccionSQL2);

	while (rs.next()) {
		datos.add(new Empleado(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4)));
	}
	rs.close();
	miConex.close();
} catch (Exception e) {
	out.println(e.getMessage());
}
pageContext.setAttribute("losEmpleados", datos);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>Nombre</td>
			<td>Apellido</td>
			<td>Puesto</td>
			<td>Sueldo</td>
			<!-- <td>Bono</td> -->
		</tr>
		<p:forEach var="tempEmpleados" items="${losEmpleados}">
			<tr>
				<td>${tempEmpleados.nombre}</td>
				<td>${tempEmpleados.apellido}</td>
				<td>${tempEmpleados.puesto}</td>
				<td>
				
				<p:choose>

						<p:when test="${tempEmpleados.salario<40000}">
				${tempEmpleados.salario+1}
				</p:when>
						<p:when
							test="${tempEmpleados.salario>40000 && tempEmpleados.salario<=60000}">
				${tempEmpleados.salario+333}
				</p:when>

						<p:otherwise>
				${tempEmpleados.salario-1}
				</p:otherwise>
					</p:choose> <%-- <td><p:if test="${tempEmpleados.salario<75000}">5000</p:if>
				<p:if test="${tempEmpleados.salario>65000}">no bonus</p:if>
				
				</td> --%>
			</tr>
		</p:forEach>
	</table>
</body>
</html>
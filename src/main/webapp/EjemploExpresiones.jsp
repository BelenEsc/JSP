<html>
<body>
	<h1 style="text-align:center">Ejemplo de expresiones</h1>


	<%!String x = "CONVERTIR A MINUSCULAS";%>
	<%!private int resultado;

public int suma(int n1, int n2) {
	resultado = n1 + n2;
	return resultado;
}

public int resta(int n1, int n2) {
	resultado = n1 - n2;
	return resultado;
}

public int multi(int n1, int n2) {
	resultado = n1 * n2;
	return resultado;

}%>
	<%=x.toLowerCase()%>
	el resultado de la suma es <%=suma (3,6)%> 
	<br>
	el resultado de la resta es <%=resta(3,6)%>
	<br>
	el resultado de la multi es <%=multi (3,6)%>
	<br>
	
	
	
	
	<%
	for (int i = 0; i < 10; i++) {
		out.println("<br>esto es " + i + "<br>");
	}
	%>
	<%-- 
	<br> La suma de 5 y 7 es
	<%=5 + 7%>
	<br> 10 es mayor que 100
 --%>
	<%=10 > 100%>
</body>
</html>
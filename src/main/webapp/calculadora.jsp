<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="paquete1.Calculadora"  %>

<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-9">
<title>Calculadora</title>
</head>

<body>

	<h1> Calculadora </h1>
	<hr>
	
	<form action="calculadora.jsp">
		
		<p> Dime el primer numero: <input type="number" id="num1" name="num1"> </p>
		
		<select id="operator" name="operator"> 
			<option value="1"> Sumar </option>
			<option value="2"> Restar </option>
		</select>
		
		<p> Dime el segundo numero: <input type="number" id="num2" name="num2"> </p>
		
		<br>
		<input type="submit" value="Calcular">
		<input type="reset" value="Borrar todo">
		
	</form>
	
	
	<form action="visualizador.jsp">
		<input type="button" value="Visualizar operación">
	</form>



	<%
	
		if ((request.getParameter("num1") != null)
				&& (request.getParameter("num2") != null)
				&& (!request.getParameter("num1").isEmpty())
				&& (!request.getParameter("num2").isEmpty())) {
			
			double num1 = Double.valueOf(request.getParameter("num1"));
			double num2 = Double.valueOf(request.getParameter("num2"));
			int operator = Integer.valueOf(request.getParameter("operator"));

			
			double result = Calculadora.operar(num1, operator, num2);
			
			out.println("<br> <br> <hr> El resultado de la cuenta es: " 
						+ result + "." + "<br> <hr>");
		
			
		}else if ((request.getParameter("num1") == null)
				|| (request.getParameter("num1").isEmpty())) {
			
			out.println("<br> <br> <hr> El primer número está vacío." 
			+ "<br> <hr>");
		
			
		}else if ((request.getParameter("num2") == null) 
				|| (request.getParameter("num2").isEmpty())) {
			
			out.println("<br> <br> <hr> El segundo número está vacío." 
			+ "<br> <hr>");
		
		}
	
		
	%>
	

	
	<%! 
	
		public String visualizar (double num1, int operator, double num2) {
		
			StringBuilder sb = new StringBuilder();
			
			
			if (num2 == -1) {
				sb.append(String.valueOf(num1) + String.valueOf(operator));
			
			}else if ((num1 != -1) && (num2 != -1)) {
				sb.append(String.valueOf(num1) + String.valueOf(operator) 
					+ String.valueOf(num2));

			}
			
			
			return (sb.toString());
		}

	%>
	
	
</body>

</html>
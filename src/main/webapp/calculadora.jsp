<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="paquete1.Calculadora"  %>

<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-9">
<title>Calculadora</title>
</head>

<link rel="stylesheet" href="estilo.css">

<body>

	<h1> Calculadora </h1>
	<hr>
	
	<form action="calculadora.jsp" method="post">
		
		<textarea id="textArea" name="textArea" cols="60" 
						style="resize: none;" readonly> 
				<%= cadenaVisualizadora %> 
		</textarea>
		
		<p> Dime el numero: <input type="text" id="num1" name="num1"> </p>
		
		<select id="operator" name="operator"> 
			<option value="+"> Sumar </option>
			<option value="-"> Restar </option>
		</select>
		
		<input type="submit" name="submit" value="Calcular">
		<input type="reset" name="reset" value="Borrar todo">
		<input type="button" name="visualizar" value="Visualizar">
		
	</form>


	<%!
	
		String num1 = "";
		String operator = "";
		String num2 = "";
		boolean estaElResultado = false;
		StringBuilder cadenaVisualizadora = new StringBuilder();

	%>


	<%
	
		if ((request.getParameter("num1") != null)
				&& (!request.getParameter("num1").isEmpty())
				&& (num1.length() == 0)
				&& (Calculadora.esUnNumero(request.getParameter("num1")) == true)) {
			
			num1 = request.getParameter("num1");
			operator = request.getParameter("operator");
			cadenaVisualizadora.setLength(0);
			cadenaVisualizadora.append(num1 + " " + String.valueOf(operator));
			
			
		}else if ((request.getParameter("num1") != null)
				&& (!request.getParameter("num1").isEmpty())
				&& (num1.length() != 0) && (num2.length() == 0)
				&& (Calculadora.esUnNumero(request.getParameter("num1")) == true)) {
			
			num2 = request.getParameter("num1");
			cadenaVisualizadora.setLength(0);
			cadenaVisualizadora.append(num1 + " " + String.valueOf(operator) 
										+ " " + num2);
			
			
		}else if ((num1.length() != 0)
				&& ((num2.length() != 0))) {
			
			out.println("<br> <br> <hr> Si quieres introducir un "
			+ "número nuevo, pulsa Calcular para borrar, y escribe la cuenta de nuevo." 
			+ "<br> <hr>");
		
			
		}if ((num1.length() != 0)
				&& (num2.length() != 0) && (estaElResultado == false)
				&& (Calculadora.esUnNumero(num1) == true) 
				&& (Calculadora.esUnNumero(num2) == true)) {
			
			cadenaVisualizadora.append(" = " + Calculadora.operar(num1, operator, num2));
			estaElResultado = true;
		
			
		}else if ((estaElResultado == true) && (num1.length() != 0)
				&& (num2.length() != 0)) {
			cadenaVisualizadora.setLength(0);
			num1 = "";
			num2 = "";
			operator = "";
			estaElResultado = false;
		}
	
	%>
	
	
</body>

</html>
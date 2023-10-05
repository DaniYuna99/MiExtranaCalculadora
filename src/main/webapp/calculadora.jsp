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


	<!-- COSAS QUE LE FALTAN:
		
		- El botón de Visualizar no funciona porque no tenía ni idea
		
		- El botón de Borrar todo no funciona porque no tenía ni idea
		
		- El botón de Calcular funciona y lo muestra en el textarea, pero
		hay que presionarlo varias veces, y la operación se registra junto 
		al primer número que introduzcas. Lo de mostrar también es algo 
		inconsistente.
		
		- No muestra que hay errores en la operación.
		
		- Las variables usadas son globales, y no se debe hacer así, lo 
		supe tarde.
		
	-->

	<%!
	
		/*Variables de la página*/
		String num1 = "";
		String operator = "";
		String num2 = "";
		boolean estaElResultado = false;
		StringBuilder cadenaVisualizadora = new StringBuilder();
		
	%>


	<%
	
		/*Este if recoge el primer número al comprobar si el número es 
		un número*/
		if ((request.getParameter("num1") != null)
				&& (!request.getParameter("num1").isEmpty())
				&& (num1.length() == 0)
				&& (Calculadora.esUnNumero(request.getParameter("num1")) == true)) {
			
			num1 = request.getParameter("num1");
			operator = request.getParameter("operator");
			cadenaVisualizadora.setLength(0);
			cadenaVisualizadora.append(num1 + " " + String.valueOf(operator));
			
		
		/*Este if te recoge el segundo número después de comprobar si 
		es un número de verdad, y actualiza el visualizador cuando 
		has puesto los dos números*/
		}else if ((request.getParameter("num1") != null)
				&& (!request.getParameter("num1").isEmpty())
				&& (num1.length() != 0) && (num2.length() == 0)
				&& (Calculadora.esUnNumero(request.getParameter("num1")) == true)) {
			
			num2 = request.getParameter("num1");
			cadenaVisualizadora.setLength(0);
			cadenaVisualizadora.append(num1 + " " + String.valueOf(operator) 
										+ " " + num2);
		
			
		/*Este if te lanza un mensaje cuando está el resultado*/	
		}else if ((num1.length() != 0)
				&& ((num2.length() != 0)) && (estaElResultado == true)) {
			
			out.println("<br> <br> <hr> Si quieres introducir un "
			+ "número nuevo, pulsa Calcular para borrar, y escribe la cuenta de nuevo." 
			+ "<br> <hr>");
		
			
		}if ((num1.length() != 0)
				&& (num2.length() != 0) && (estaElResultado == false)
				&& (Calculadora.esUnNumero(num1) == true) 
				&& (Calculadora.esUnNumero(num2) == true)) {
			
			cadenaVisualizadora.append(" = " + Calculadora.operar(num1, operator, num2));
			estaElResultado = true;
		
		
		//Este if vuelve a poner las variables vacías cuando detecta
		//que se ha mostrado el resultado
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
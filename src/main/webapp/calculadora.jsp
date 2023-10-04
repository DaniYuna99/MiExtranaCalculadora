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
	
	<form action="calculadora.jsp" method="post">
		
		<textarea id="textArea" name="textArea"> <%= cadenaVisualizadora %> </textarea>
		
		<p> Dime el numero: <input type="text" id="num1" name="num1"> </p>
		
		<select id="operator" name="operator"> 
			<option value="+"> Sumar </option>
			<option value="-"> Restar </option>
		</select>
		
		<input type="submit" value="Calcular">
		<input type="reset" value="Borrar todo">
		<input type="button" value="Visualizar">
		
	</form>



	<%
	
		if ((request.getParameter("num1") != null)
				&& (!request.getParameter("num1").isEmpty())) {
			
			num1 = request.getParameter("num1");
			operator = request.getParameter("operator");
			cadenaVisualizadora.setLength(0);
			cadenaVisualizadora.append(num1 + " " + String.valueOf(operator));
			


			
			//double result = Calculadora.operar(num1, operator, num2);
			
			//out.println("<br> <br> <hr> El resultado de la cuenta es: " 
						//+ result + "." + "<br> <hr>");
		
			
		}else if ((request.getParameter("num1") != null)
				&& (num1.length() != 0)) {
			
			num2 = request.getParameter("num1");
			cadenaVisualizadora.setLength(0);
			cadenaVisualizadora.append(num1 + " " + String.valueOf(operator) 
										+ " " + num2);
			
			
		}else if ((request.getParameter("num1") == null)
				|| (request.getParameter("num1").isEmpty())) {
			
			out.println("<br> <br> <hr> El número está vacío." 
			+ "<br> <hr>");
		}
	
		
	%>
	
	
	<%!
	
		String num1 = "";
		String operator = "";
		String num2 = "";
		StringBuilder cadenaVisualizadora = new StringBuilder();

	%>

	
	<%

		//String num1 = "-1";
		/*int operator = Integer.valueOf(request.getParameter("operator"));
		
		
		if (!request.getParameter("num1").isEmpty()) {
			num1 = request.getParameter("num1");
		}*/
		
		

		
		//out.println(Calculadora.visualizar(num1, operator, num2));
		//out.println(num1);
		//out.println(num2);
		//out.println(operator);

	
	%>
	
	
</body>

</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>


<%

	double num1 = -1;
	double num2 = -1;
	int operator = Integer.valueOf(request.getParameter("operator"));
	
	
	if (!request.getParameter("num1").isEmpty()) {
		num1 = Double.valueOf(request.getParameter("num1"));
	}
	
	if (!request.getParameter("num2").isEmpty()) {
		num2 = Double.valueOf(request.getParameter("num2"));
	}
	
	
	out.println(visualizar(num1, operator, num2));
	
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




package paquete1;

public class Calculadora {

	private String num1;
	private String operator;
	private String num2;
	
	
	
	//Constructor
	public Calculadora (String num1, String operator, String num2) {
		this.num1 = num1;
		this.operator = operator;
		this.num2 = num2;
	}
	
	
	
	//Métodos
	public static double operar (String num1, int operator, String num2) {
		
		double result = 0;
		
		if (operator == 1) {
			result = Double.valueOf(num1) + Double.valueOf(num2);
		
		}else if (operator == 2) {
			result = Double.valueOf(num1) - Double.valueOf(num2);
		}
		
		
		return (result);
	}

	
	
	public static String visualizar (String num1, int operator, String num2) {
		
		StringBuilder sb = new StringBuilder();
			
			
		if (Integer.valueOf(num2) == -1) {
			sb.append(String.valueOf(num1) + String.valueOf(operator));
			
		}else if ((Integer.valueOf(num1) != -1) 
				&& (Integer.valueOf(num2) != -1)) {
			sb.append(String.valueOf(num1) + String.valueOf(operator) 
				+ String.valueOf(num2));

		}
			
			
		return (sb.toString());
	}
	
	
	
	//Getters/Setters
	public String getNum1() {
		return num1;
	}


	public void setNum1(String num1) {
		this.num1 = num1;
	}


	public String getOperator() {
		return operator;
	}


	public void setOperator(String operator) {
		this.operator = operator;
	}


	public String getNum2() {
		return num2;
	}


	public void setNum2(String num2) {
		this.num2 = num2;
	}
	
}

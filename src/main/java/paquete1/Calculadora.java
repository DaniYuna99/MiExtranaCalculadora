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
	
	/**
	 * Este método calcula la suma o la resta de dos números que les 
	 * pases por parámetro, y para determinar la operación a realizar, 
	 * hay que pasarle un signo de suma (+) o resta (-) como parámetro
	 * String también.
	 * 
	 * Devuelve el resultado de la operación correspondiente.
	 * 
	 * @param num1
	 * @param operator
	 * @param num2
	 * @return
	 */
	public static double operar (String num1, String operator, String num2) {
		
		double result = 0;
		
		if (operator.equals("+")) {
			result = Double.valueOf(num1) + Double.valueOf(num2);
		
		}else if (operator.equals("-")) {
			result = Double.valueOf(num1) - Double.valueOf(num2);
		}
		
		
		return (result);
	}
	
	
	
	/**
	 * Este método comprueba si un número en una variable String
	 * es realmente un número, y que no posea caracteres no válidos.
	 * */
	public static boolean esUnNumero (String num) {
		
		boolean tieneLetra = true;
		String caracteresNoPermitidos = "[]-_:,Ç;?'!@·#$~%&¬/()=+*";
		
		
		for (int i = 0; i < num.length(); i++) {
			
			for (int j = 0; j < caracteresNoPermitidos.length(); j++) {
				
				if (Character.isAlphabetic(num.charAt(i)) 
						|| (caracteresNoPermitidos.charAt(j) == num.charAt(i))) {
					tieneLetra = false;
				}
			}
		}
		
		
		return (tieneLetra);
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

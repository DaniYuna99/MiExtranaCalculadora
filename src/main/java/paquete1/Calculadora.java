package paquete1;

public class Calculadora {

	private double num1;
	private int operator;
	private double num2;
	
	
	
	//Constructor
	public Calculadora (double num1, int operator, double num2) {
		this.num1 = num1;
		this.operator = operator;
		this.num2 = num2;
	}
	
	
	
	//Métodos
	public static double operar (double num1, int operator, double num2) {
		
		double result = 0;
		
		if (operator == 1) {
			result = num1 + num2;
		
		}else if (operator == 2) {
			result = num1 - num2;
		}
		
		
		return (result);
	}

	
	
	//Getters/Setters
	public double getNum1() {
		return num1;
	}


	public void setNum1(double num1) {
		this.num1 = num1;
	}


	public int getOperator() {
		return operator;
	}


	public void setOperator(int operator) {
		this.operator = operator;
	}


	public double getNum2() {
		return num2;
	}


	public void setNum2(double num2) {
		this.num2 = num2;
	}
	
}

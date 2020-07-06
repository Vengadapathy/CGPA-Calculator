package operations;

public class CalculatorInstance {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Calculator cal = new Calculator();
		cal.initialize();
//		cal.getDepartment("Electrical and Electronics Engineering");
		System.out.println(cal.getSubjectList("Electrical and Electronics Engineering", 1));
		cal.closeConnection();
	}

}

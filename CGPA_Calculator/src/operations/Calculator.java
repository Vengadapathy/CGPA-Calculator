package operations;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Scanner;

import objects.Department;
import objects.Subject;

public class Calculator {
	
	DatabaseOperations databaseOperations = null ;
	Scanner input =null ;
	HashMap<String,Integer> gradeMap = new HashMap<>();
	
	public boolean initialize() {
		databaseOperations = new DatabaseOperations();
		databaseOperations.getConnection();
		input = new Scanner(System.in);
		setGradeMap();
		return false;
	}
	
	public void closeConnection() {
		try {
			DatabaseOperations.connection.close();
			databaseOperations = null ;
			input=null;
			gradeMap=null;
		} catch (SQLException e) {
			System.out.println("Connection closed");
			e.printStackTrace();
		}
	}
	
	public void setGradeMap() {
		gradeMap.put("S", 10);
		gradeMap.put("A", 9);
		gradeMap.put("B", 8);
		gradeMap.put("C", 7);
		gradeMap.put("D", 6);
		gradeMap.put("E", 5);
		gradeMap.put("F", 0);
		System.out.println(gradeMap.toString());
	}
	
	public HashMap<String,Department> getDeptList() {
		return databaseOperations.getDeptList();
	}
	
	public Department getDepartment(String deptName) {
		return databaseOperations.getDept("deptName");
	}
	
	public HashMap<String, Subject> getSubjectList(String deptName,int semester){
		return databaseOperations.getSubjectMap(deptName, semester);
	}
	
	public double calculateCGPA(HashMap<String, Subject> map) {
		double points = 0;
		double subjectCredits = 0;
		
		for (Subject subject : map.values()) {
			points += ( gradeMap.get(subject.getGrade()) * (subject.getSubjectCredit()) );
			subjectCredits += subject.getSubjectCredit() ;
		}
		return (points/subjectCredits);
	}
}

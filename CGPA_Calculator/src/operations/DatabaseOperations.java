package operations;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

import objects.Department;
import objects.Subject;

public class DatabaseOperations {
	
	private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/cgpa_calculator";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "password";
	public static Connection connection = null;
	public static PreparedStatement prep = null;
	
	public boolean getConnection() {
		try {
			Class.forName(DRIVER);
			connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			return true;
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public Department getDept(String deptName) {
		String query = " SELECT * from department " + 
				"inner join course on course.courseid = department.courseid " + 
				"inner join domain on domain.domainid = course.domainid " + 
				"where deptname = ? ";
		try {
			DatabaseOperations.connection.setAutoCommit(false);

			prep = connection.prepareStatement(query);
			prep.setString(1, deptName);
			ResultSet result = prep.executeQuery();
			System.out.println("getDept");
			while(result.next()) {
				System.out.println(result.getString("deptcode"));
				return new Department(result.getString("deptcode"),result.getString("deptname"),result.getString("coursename"),result.getString("domainname"));
			}
			
			DatabaseOperations.connection.commit();

		} catch (SQLException e) {
			e.printStackTrace();
			try {
				DatabaseOperations.connection.rollback();
			} catch (SQLException excep) {
				excep.printStackTrace();
			}
		} finally 	{
			try {
				DatabaseOperations.connection.setAutoCommit(true);
			} catch (final SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
	public HashMap<String,Subject> getSubjectMap(String deptName,int semester) {
		
		HashMap<String,Subject> map = new HashMap<>();
		String query = "select * from department " + 
				"inner join subtodept on department.deptid = subtodept.deptid " + 
				"inner join subject on subtodept.subjectid = subject.subjectid " + 
				"inner join course on department.courseid = course.courseid " + 
				"inner join domain on course.domainid = domain.domainid " + 
				"where department.deptname = ? and subject.semester = ? ";
		try {
			prep = connection.prepareStatement(query);
			prep.setString(1, deptName);
			prep.setString(2, String.valueOf(semester));
			ResultSet result = prep.executeQuery();
			while(result.next()) {
				Department dept = getDept(deptName);
				map.put(result.getString("subjectcode"),new Subject(result.getString("subjectcode"),result.getString("subjectname"),result.getInt("semester"),result.getString("subtype"),result.getInt("subcredit"),null,dept));
				System.out.println(map.get(result.getString("subjectcode")));
			}
			return map;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public HashMap<String, Department> getDeptList() {
		HashMap<String,Department> map = new HashMap<>();
		String query = "select * from department " + 
				"inner join course on department.courseid = course.courseid " + 
				"inner join domain on course.domainid = domain.domainid "; 
		try {
			prep = connection.prepareStatement(query);
			ResultSet result = prep.executeQuery();
			while(result.next()) {
				map.put(result.getString("deptcode"),new Department(result.getString("deptcode"),result.getString("deptname"),result.getString("coursename"),result.getString("domainname")));
			}
			return map;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	
}

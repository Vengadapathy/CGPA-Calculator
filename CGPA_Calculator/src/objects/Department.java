package objects;

public class Department {
	
	String deptCode;
	String deptName;
	String course;
	String domain;
	
	public Department(String deptCode, String deptName, String course, String domain) {
		this.deptCode = deptCode;
		this.deptName = deptName;
		this.course = course;
		this.domain = domain;
	}
	public String getDeptCode() {
		return deptCode;
	}
	public void setDeptCode(String deptCode) {
		this.deptCode = deptCode;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	
}

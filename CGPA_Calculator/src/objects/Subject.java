package objects;

public class Subject {
	
	String subjectCode ;
	String subjectName;
	int semester;
	String subjectType;
	int subjectCredit;
	String grade;
	Department department;
	
	public Subject(String subjectCode, String subjectName, int semester, String subjectType, int subjectCredit,String grade,Department department) {
		this.subjectCode = subjectCode;
		this.subjectName = subjectName;
		this.semester = semester;
		this.subjectType = subjectType;
		this.subjectCredit = subjectCredit;
		this.grade = grade;
		this.department = department;
	}

	public String getSubjectCode() {
		return subjectCode;
	}

	public void setSubjectCode(String subjectCode) {
		this.subjectCode = subjectCode;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public int getSemester() {
		return semester;
	}

	public void setSemester(int semester) {
		this.semester = semester;
	}

	public String getSubjectType() {
		return subjectType;
	}

	public void setSubjectType(String subjectType) {
		this.subjectType = subjectType;
	}

	public int getSubjectCredit() {
		return subjectCredit;
	}

	public void setSubjectCredit(int subjectCredit) {
		this.subjectCredit = subjectCredit;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}
	
	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "Subject [subjectCode=" + subjectCode + ", subjectName=" + subjectName + ", semester=" + semester
				+ ", subjectType=" + subjectType + ", subjectCredit=" + subjectCredit + ", grade=" + grade
				+ ", department=" + department + "]";
	}

	
	
}

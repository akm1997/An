package practieJava;

public class Student implements Comparable<Student> {
	public  String name;
	public int classNo;
	public int studentNo;
	public double Korean;
	public double Math;
	public double English;
	public double Total;
	public int schoolRank;
	public int classRank;
	
	
	public int getClassRank() {
		return classRank;
	}
	public void setClassRank(int classRank) {
		this.classRank = classRank;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getClassNo() {
		return classNo;
	}
	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}
	public int getStudentNo() {
		return studentNo;
	}
	public void setStudentNo(int studentNo) {
		this.studentNo = studentNo;
	}
	public double getKorean() {
		return Korean;
	}
	public void setKorean(double korean) {
		Korean = korean;
	}
	public double getMath() {
		return Math;
	}
	public void setMath(double math) {
		Math = math;
	}
	public double getEnglish() {
		return English;
	}
	public void setEnglish(double english) {
		English = english;
	}
	public double getTotal() {
		return Total;
	}
	
	
	
	
	public int getSchoolRank() {
		return schoolRank;
	}
	public void setSchoolRank(int schoolRank) {
		this.schoolRank = schoolRank;
	}
	
	
	
	
	public int compareTo(Student obj) {
		
		return (int)(obj.Total-this.Total);

	}

	
	
	public Student(String name,int classNo,int studentNo,double Korean,double Math,double English) {
		this.name=name;
		this.classNo=classNo;
		this.studentNo=studentNo;
		this.Korean=Korean;
		this.Math=Math;
		this.English=English;
		this.Total=Korean+Math+English;
		
	}
	
	@Override
	public String toString() {
		StringBuilder sb=new StringBuilder();
		sb.append(name+"\t");
		sb.append(classNo+"\t");
		sb.append(studentNo+"\t");
		sb.append(Korean+"\t");
		sb.append(Math+"\t");
		sb.append(English+"\t");
		sb.append(Total+"\t");
		sb.append(schoolRank+"\t");
		sb.append(classRank);
		
				return sb.toString();
	}

}

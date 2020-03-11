package practieJava;

import java.util.Comparator;

public class ClassStudentNo implements Comparator<Student> {
	public int compare(Student s1,Student s2) {
		int result=s1.classNo-s2.classNo;
		
		if(result==0) {
			result= s1.studentNo-s2.studentNo;
		}
		return result;
	}

}

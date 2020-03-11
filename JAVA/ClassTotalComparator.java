package practieJava;

import java.util.Comparator;


public class ClassTotalComparator implements Comparator<Student> {
	@Override
	public int compare(Student s1, Student s2) {
		if(s1.classNo>s2.classNo) {
			return 1;
		}else if(s1.classNo<s2.classNo) {
			return -1;
		}else
			return (int)(s1.compareTo(s2));
		
		
		
		
	
		
	}
	

}

package practieJava;

import java.util.ArrayList;
import java.util.Collections;

public class Main {

	public static void main(String args[]) {
		ArrayList<Student> list = new ArrayList<Student>();
		 ClassTotalComparator obj = new ClassTotalComparator();
		// ClassStudentNo obj1 = new ClassStudentNo();

		list.add(new Student("���ü�", 3, 2, 100, 100, 100));
		list.add(new Student("����", 8, 2, 100, 100, 100));
		list.add(new Student("Ű��и�", 8, 2, 100, 100, 90));
		list.add(new Student("�ȱ��", 5, 3, 90, 90, 90));
		list.add(new Student("�層��", 5, 3, 90, 90, 95));
		list.add(new Student("�層��", 5, 3, 90, 980, 95));
		list.add(new Student("������", 2, 1, 50, 50, 51));
		list.add(new Student("�����̾�", 2, 1, 50, 50, 52));
		list.add(new Student("â��", 1, 2, 5, 10, 15));
		list.add(new Student("������", 4, 2, 5, 10, 15));
		list.add(new Student("����", 3, 3, 20, 40, 15));

		//calculateSchoolRank(list);
		//calculateClassRank(list);
		//Collections.sort(list,obj);
		calculateSchoolRank(list);
		calculateClassRank(list);
		printList(list);

	}

	public static void calculateSchoolRank(ArrayList<Student> list) {
		Collections.sort(list);
		int prevRank = 1;
		double prevTotal = 0;
		int length = list.size();
		for (int i = 0; i < length; i++) {
			if (i == 0) {
				prevTotal = list.get(0).Total;
				list.get(i).schoolRank = prevRank;
				prevRank = list.get(i).schoolRank;
			}
			if (i > 0) {
				if (prevTotal == list.get(i).getTotal()) {
					list.get(i).schoolRank = prevRank;

					prevRank = list.get(i).schoolRank;
					prevTotal = list.get(i).getTotal();

				} else if (list.get(i).getTotal() < prevTotal) {
					prevRank++;
					list.get(i).schoolRank = prevRank;
					prevTotal = list.get(i).getTotal();
				}
			}
		}

	}

	
	
	
	
	
	public static void calculateClassRank(ArrayList<Student> list) {
		Collections.sort(list, new ClassTotalComparator());

		int length = list.size();
		int prevClassNo = 0;
		int prevClassRank = 1;
		double prevTotal = 0;

		for (int i = 0; i < length; i++) {

			Student s = list.get(i);

			if (s.classNo != prevClassNo) {
				s.classRank = 1;

			}
			if (s.classNo == prevClassNo) {
				if (s.Total == prevTotal) {
					s.setClassRank(prevClassRank);

				}
				if (s.Total != prevTotal) {

					s.classRank = ++prevClassRank;
				}

			}
			prevClassNo = s.classNo;
			prevClassRank = s.classRank;
			prevTotal = s.Total;

		}

	}

	public static void printList(ArrayList<Student> list) {
		System.out.println("�̸�\t��\t��ȣ\t����\t����\t����\t����\t���\t�ݵ��");
		System.out.println("======================================================");
		for (Student s : list) {
			System.out.println(s);
		}
		System.out.println("======================================================");
	}

}

package answerPaper; //���������� �����I

import java.util.Scanner;

public class QuizEx1 {
	public static void main(String[] args) {
		
		
		String[] data = { "���� �� Ű���尡 �ƴ� ����?`2`final`True`if`public", "���� �� �ڹ��� �����ڰ� �ƴ� ����?`6`&`|`++`!=`/`^",
				"���� �� �޼����� ��ȯ���� ������ �ǹ��ϴ� Ű�����?`1`void`null`false" };
		Scanner scanner = new Scanner(System.in);
		int count=0;     //������ ���� Ƚ��
		String[] answer = {"True","^","void"};
		
		shuffle(data);    //���� ���� ����
		
		for (int i = 0; i < data.length; i++) {
			String[] question = data[i].split("`", 2);
			System.out.println(question[0]); // ���� ���

			String[] choice = question[1].split("`"); // �������� �и��Ѵ�

			for (int j = 1; j < choice.length; j++) {
				System.out.print(j + "." + choice[j] + " ");
				//answer = choice[0];
			}
			System.out.println();
			System.out.print("��:");
			String input = scanner.nextLine();

			if(input.equals(answer)) {    //������ ���� ��� count�� ������ ����
				++count;
			}

			System.out.println("\n");
		}
		System.out.println("���䰳��/��ü���׼�:" + count + "/" + "3");

	}

	public static void shuffle(String[] data) {

		for (int i = 0; i < data.length; i++) {
			String temp = data[i];
			data[i] = data[(int) (Math.random() * data.length)];
			data[(int) (Math.random() * data.length)] = temp;
		}
		for (int i = 0; i < data.length; i++) {
			String[] quiz = data[i].split("`", 2);

			String[] answer = quiz[1].split("`");

			for (int j = 1; j < answer.length; j++) {
				String temp = answer[i];
				answer[i] = answer[(int) (Math.random() * (answer.length - 1))];
				answer[(int)( Math.random() * (answer.length - 1))] = temp;

			}
		}

	}
}

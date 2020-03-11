import java.util.Random;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);

		String[] strArr = { "CHANGE", "LOVE", "HOPE", "VIEW" };

		while (true) {
			String answer = getAnswer(strArr);
			String question = getScrambledWord(answer);
			char hint[] = new char[answer.length()];

			for (int i = 0; i < hint.length; i++) {
				hint[i] = '_';
			}

			System.out.println("Question:" + question);
			System.out.println("Your answer is:");

			String UserInput = scanner.nextLine();
			if (UserInput.equals(answer)) {
				System.out.println("����!");
			} else if (UserInput.equals("q") || UserInput.equals("Q")) {
				break;
			} else {
				while (!UserInput.equals(answer)) {                       //���� Ʋ����� ������ �� ������ �ݺ��Ѵ�.

					System.out.println(UserInput + "�� ������ �ƴմϴ�. �ٽ� �Է��Ͻÿ�");
					System.out.println("Hint=" + getHint(answer, hint));
					System.out.println("Your answer is:");
					UserInput = scanner.nextLine();

				}
			}
		}

	}

	public static String getAnswer(String[] strArr) {         // ���� �迭���� �������� ������ �����ϴ� �޼ҵ�
		String answer;
		int i = (int) (Math.random() * strArr.length);
		answer = strArr[i];

		return answer;
	}

	public static String getScrambledWord(String str) {         //���� �ܾ �����ִ� �޼ҵ�
		char[] arr = str.toCharArray();

		for (int i = 0; i < str.length(); i++) {
			int idx = (int) Math.random() * str.length();
			char tmp = arr[i];
			arr[i] = arr[idx];
			arr[idx] = tmp;

		}
		return new String(arr);
	}



	
	public static String getHint(String answer, char[] hint) {      //��Ʈ�� �ִ� �޼ҵ�
		int count = 0;                    //'_'�� ����

		for (int i = 0; i < hint.length; i++) {   
			if (hint[i] == '_')
				++count;
		}

		if (count >= 2) {      //'_'�� ������ 2�� �̻��� ��쿡�� ��Ʈ ���ڸ� �߰��Ѵ�   ������ �� �Ⱦ˷��ֱ� ������
			

			int idx = (int) (Math.random() * answer.length());
			hint[idx] = answer.charAt(idx);

		}
		return new String(hint);
	}
}

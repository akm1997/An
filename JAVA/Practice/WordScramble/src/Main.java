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
				System.out.println("정답!");
			} else if (UserInput.equals("q") || UserInput.equals("Q")) {
				break;
			} else {
				while (!UserInput.equals(answer)) {                       //답이 틀릴경우 정답이 될 때까지 반복한다.

					System.out.println(UserInput + "은 정답이 아닙니다. 다시 입력하시오");
					System.out.println("Hint=" + getHint(answer, hint));
					System.out.println("Your answer is:");
					UserInput = scanner.nextLine();

				}
			}
		}

	}

	public static String getAnswer(String[] strArr) {         // 정답 배열에서 랜덤으로 정답을 선택하는 메소드
		String answer;
		int i = (int) (Math.random() * strArr.length);
		answer = strArr[i];

		return answer;
	}

	public static String getScrambledWord(String str) {         //정답 단어를 섞어주는 메소드
		char[] arr = str.toCharArray();

		for (int i = 0; i < str.length(); i++) {
			int idx = (int) Math.random() * str.length();
			char tmp = arr[i];
			arr[i] = arr[idx];
			arr[idx] = tmp;

		}
		return new String(arr);
	}



	
	public static String getHint(String answer, char[] hint) {      //힌트를 주는 메소드
		int count = 0;                    //'_'의 갯수

		for (int i = 0; i < hint.length; i++) {   
			if (hint[i] == '_')
				++count;
		}

		if (count >= 2) {      //'_'의 갯수가 2개 이상일 경우에만 힌트 글자를 추가한다   정답을 다 안알려주기 위함임
			

			int idx = (int) (Math.random() * answer.length());
			hint[idx] = answer.charAt(idx);

		}
		return new String(hint);
	}
}

package answerPaper; //오지선다형 퀴즈문제I

import java.util.Scanner;

public class QuizEx1 {
	public static void main(String[] args) {
		
		
		String[] data = { "다음 중 키워드가 아닌 것은?`2`final`True`if`public", "다음 중 자바의 연산자가 아닌 것은?`6`&`|`++`!=`/`^",
				"다음 중 메서드의 반환값이 없을을 의미하는 키워드는?`1`void`null`false" };
		Scanner scanner = new Scanner(System.in);
		int count=0;     //정답을 맞힌 횟수
		String[] answer = {"True","^","void"};
		
		shuffle(data);    //문제 순서 섞기
		
		for (int i = 0; i < data.length; i++) {
			String[] question = data[i].split("`", 2);
			System.out.println(question[0]); // 문제 출력

			String[] choice = question[1].split("`"); // 선택지를 분리한다

			for (int j = 1; j < choice.length; j++) {
				System.out.print(j + "." + choice[j] + " ");
				//answer = choice[0];
			}
			System.out.println();
			System.out.print("답:");
			String input = scanner.nextLine();

			if(input.equals(answer)) {    //정답을 맞힐 경우 count의 갯수는 증가
				++count;
			}

			System.out.println("\n");
		}
		System.out.println("정답개수/전체문항수:" + count + "/" + "3");

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

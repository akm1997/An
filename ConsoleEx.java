package ConsoleEx1;

import java.util.Scanner;

public class Main {
	public static void main(String[] args) {

		Scanner scanner = new Scanner(System.in);

		while (true) {
			String prompt = ">>";
			System.out.print(prompt);

			String input = scanner.nextLine();

			if (input.equals("Q") || input.equals("q")) { // q나 Q입력시 종료
				System.exit(0);
				break;
			}

			String str = input.trim();
			
			String[] argArr = str.split(" +");
			for (int i = 0; i < argArr.length; i++) {
				
				System.out.println(argArr[i]);
			}
		
		}

	}
}

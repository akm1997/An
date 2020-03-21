package object_oreinted_Programming2;

public class InstanceofTest {
	public static void main(String[] args) {
		FireEngine fe = new FireEngine();

		if (fe instanceof FireEngine) {
			System.out.println("This is a fireEngine instance.");
		}

		if (fe instanceof Car) {
			System.out.println("This is a Car instance");
		}
		if (fe instanceof Object) {
			System.out.println("This is an Object instance");
		}
		System.out.println(fe.getClass().getName());   //클래스 이름을 출력
	}

}
//FireEngine 클래스는 Object클래스와 Car클래스의 자손 클래스 이므로 조상의 멤버들을 상속받았기 떄문에 
//FireEngine 인스턴스는 Object인스턴스와 Car인스턴스를 포함하고 있는셈
package object_oreinted_Programming2;

//참조변수와 인스턴스의 연결

public class BindingTest {
	public static void main(String[] args) {
		Parent p = new Child();
		Child c = new Child();

		System.out.println("p.x=" + p.x);
		p.method();
		System.out.println("c.x=" + c.x);
		c.method();
	}
}

class Parent {
	int x = 100;

	void method() {
		System.out.println("Parent Mehtod");
	}
}

class Child extends Parent {
	int x = 200;

	void method() {
		System.out.println("Child Method");
	}
}
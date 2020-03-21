package object_oreinted_Programming2;

//참조변수와 인스턴스의 연결

public class BindingTest2 {
	public static void main(String[] args) {
		Parent2 p = new Child2();
		Child2 c = new Child2();

		System.out.println("p.x=" + p.x);
		p.method();
		System.out.println("c.x=" + c.x);
		c.method();
	}
}

class Parent2 {
	int x = 100;

	void method() {
		System.out.println("Parent Mehtod");
	}
}

class Child2 extends Parent2 { }
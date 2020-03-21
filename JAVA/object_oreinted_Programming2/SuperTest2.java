package object_oreinted_Programming2;

public class SuperTest2 {
	public static void main(String args[]){
		Child c=new Child();
		c.method();
	}

}
class Parent{
	int x=10;
}

class Child extends Parent{
	int x=20;
	
	void mehtod(){
		System.out.println("x="+x);
		System.out.println("this.x="+this.x);
		System.out.println("super.x="+super.x);
	}
}

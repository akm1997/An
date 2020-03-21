package object_oreinted_Programming2;
class TV{
	boolean power; //전원 상태 (on/off)
	int channel;  //채널
	
	void power() { power=!power;}
	void channelUp() { ++channel; }
	void channelDown() { --channel; }
	
}

class CaptionTV extends TV{
	boolean caption; //캡션 상태 (on/off)
	void displayCaption(String text){
		if (caption){   //캡션 상태가 on(true)일 때만 text를 보여준다
			System.out.println(text);
		}
	}
}
public class CaptionTvTest {
	public static void main(String[] args){
		CaptionTV ctv=new CaptionTV ();
	ctv.channel=10;                 //조상으로부터 상속 받은 멤버
	ctv.channelUp();				//조상으로부터 상속받은 멤버
	System.out.println(ctv.channel);
	ctv.displayCaption("Hello, World");
	ctv.caption=true;          
	ctv.displayCaption("Hello, World");
		}

}

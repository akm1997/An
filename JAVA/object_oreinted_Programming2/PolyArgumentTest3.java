package object_oreinted_Programming2;
  
//Vector 클래스 사용 

import java.util.*;

class Product{
	int price;
	int bonusPoint;
	
	Product(int price){
		this.price=price;
		bonusPoint=(int)(price/10.0);
		
		}
	Product(){
		price=0;
		bonusPoint=0;
	}
	
}
class TV extends Product{
	TV(){
		super(100);
	}
	public String toString(){
		return "TV"; 
	}
}
class Computer extends Product{
	Computer(){
		super(200);
	}

	public String toString() {
		return "Computer";
	}
}

class Buyer { // 고객,
	int money = 1000; // 소유 금액
	int bonusPoint = 0; // 소유 보너스 포인트
	Vector item = new Vector();
	int i = 0;

	void buy(Product p) {
		if (money < p.price) {
			System.out.println("소유 금액이 부족합니다");
			return;
		}
		money -= p.price;
		bonusPoint += p.bonusPoint;
		item.add(p); // 구입한 제품을 Vector에 저장한다
		System.out.println(p + "을/를 구입하셨습니다");
	}
	
	void refund(Product p){
		if(item.remove(p)){
			money+=p.price;
			bonusPoint-=p.bonusPoint;
			System.out.println(p+"를 환불 하셨습니다");
			}
		else{
			System.out.println("구입하신 제품 중 해당 제품이 없습니다");
		}
	}
	
	void summary(){
		int sum=0;
		String itemList="";
		
		if(item.isEmpty()){
			System.out.println("구입하신 제품이 없습니다");
			return;
		}
		
		//반복문을 이용해서 구입한 물품의 총 가격과 목록을 만든다
		for(int i=0;i<item.size();i++){
			Product p=(Product)item.get(i);
			sum+=p.price;
			itemList+=(i==0)?""+p:","+p;
			
		}
		System.out.println("구입하신 물품의 총금액은"+sum+"만원입니다");
		System.out.println("구입하신 제품은"+itemList+"입니다");
		
	}
}

public class PolyArgumentTest3 {
	public static void main(String[] args){
		TV tv=new TV();
		
		Buyer b=new Buyer();
		b.buy(tv);
		b.buy(new Computer());
		b.summary();
		
		System.out.println();
		
		b.refund(tv);
		b.summary();
		
	}

}

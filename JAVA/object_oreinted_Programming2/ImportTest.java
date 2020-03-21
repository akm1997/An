package object_oreinted_Programming2;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ImportTest {
	public static void main(String[] args){
		Date today =new Date();
		
		SimpleDateFormat Date =new SimpleDateFormat("yyyy/MM/dd");
		SimpleDateFormat Time= new SimpleDateFormat("hh:mm:ss a");
		
		System.out.println("오늘 날짜는 "+Date.format(today));
		System.out.println("현재 시간은"+Time.format(today));
		
	}

}

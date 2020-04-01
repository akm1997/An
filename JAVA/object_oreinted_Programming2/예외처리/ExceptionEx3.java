package object_oreinted_Programming2;
//예외 고의로 발생시키기
public class ExceptionEx3 {
	public static void main(String[] args){
		try{
			Exception e=new Exception("고의로 발생시켰음");
			throw e;
	//		throw new Exception("고의로 발생시켰음"); 위의 두줄을 한줄로 줄여 쓸 수 있음
		}catch(Exception e){
			System.out.println("에러 메시지:"+e.getMessage());
			e.printStackTrace();
		}
		System.out.println("프로그램이 정상 종료되었음");
	}

}

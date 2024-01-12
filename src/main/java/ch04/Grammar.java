package ch04;

public class Grammar {

	public String name = "JSPStudy";

	public void jspStudy(int year) {
		System.out.println("변수 name은 " + name + "입니다.");
		System.out.println("변수 year은 " + year + "입니다.");
		System.out.println(name + year);
	}

	public static void main(String[] args) {
		int year = 2013;
		Grammar g = new Grammar();
		g.jspStudy(year);
//		
//		char a[] = { '가', '나', '다', '라' };
//		for (char temp : a) {
//			System.out.println(temp);
//		}

//		int n = 9;
//		System.out.println("n :"+n++);
//		System.out.println(n);
//		System.out.println("n :"+ ++n);
	}


	

}

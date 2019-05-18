import java.util.Scanner;

public class Test {

	public native int multiply(int a, int b);

	public static void main(String[] args) {
		System.loadLibrary("Test");

		Scanner sc = new Scanner(System.in);
		int i = sc.nextInt();
		int j = sc.nextInt();
		Test t = new Test();
		System.out.println("--> " + t.multiply(i, j));
	}

}

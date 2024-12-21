import java.util.*;

public class WithoutMax {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter A");
        int a = sc.nextInt();
        System.out.println("Enter B");
        int b = sc.nextInt();
        System.out.println("Enter C");
        int c = sc.nextInt();
        int max = ((a > b && a > c) ? a : (b > c) ? b : c);
        System.out.println("Final Answer:" + max);
    }
}
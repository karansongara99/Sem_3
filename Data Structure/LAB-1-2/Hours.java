import java.util.Scanner;

public class Hours {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter Seconds: ");
        int n = sc.nextInt();
        int h = n / 3600;
        int m = (n % 3600) / 60;
        int s = n % 60;
        System.out.println(h);
        System.out.println(m);
        System.out.println(s);
    }
}

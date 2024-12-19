
import java.util.Scanner;

public class Days {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int d = sc.nextInt();
        int y = d / 365;
        d = d % 365;
        int w = d / 7;
        d = d % 7;
        System.out.println(d);
        System.out.println(y);
        System.out.println(w);

    }
}


import java.util.*;

public class P33 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter A:");
        int a = sc.nextInt();
        System.out.println("Enter B:");
        int b = sc.nextInt();
        System.out.println("Swapped values are Before:" + a + " " + b);
        
        P33 s = new P33();
        s.swappingoftwono(a, b);
    }

    void swappingoftwono(int a, int b) {
        int temp;
        temp = a;
        a = b;
        b = temp;
        System.out.println("Swapped values are After:" + a + " " + b);
    }
}

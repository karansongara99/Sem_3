
import java.util.Scanner;

class PrimeRange {

    public static int isprime(int n) {
        for (int i = 2; i < n; i++) {
            if (n % i == 0) {
                return -1;
            }
        }
        return 1;
    }

    public static void main(String args[]) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter A:");
        int a = sc.nextInt();
        System.out.println("Enter B:");
        int b = sc.nextInt();
        for (int i = a; i <= b; i++) {
            if (isprime(i) == 1) {
                System.out.print(i + " ");
            }
        }
    }
}

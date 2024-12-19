import java.util.*;

public class CalculateAverageDemo {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter Number:");
        int n = sc.nextInt();
        int sum = 0;
        for (int i = 0; i < n; i++) {
            int a = sc.nextInt();
            sum = sum + a;
        }
        int averagesum = sum / n;
        System.out.println(averagesum);
    }

}

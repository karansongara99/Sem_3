
import java.util.Scanner;

public class P31 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a[][] = new int[3][2];
        int b[][] = new int[2][3];
        int c[][] = new int[3][3];
        System.out.println("Enter Element of First Matrix:");
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 2; j++) {
                a[i][j] = sc.nextInt();
            }
        }
        System.out.println("Enter Element of Second Matrix:");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 3; j++) {
                b[i][j] = sc.nextInt();
            }
        }
        System.out.println("Final Answer of Matrix of Multiplication:");
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                c[i][j] = 0;
                for (int k = 0; k < 3; k++) {
                    c[i][j] += (a[i][k] * b[k][j]);
                    System.out.println(c[i][j]);
                }
                
            }
            System.out.println();
        }
    }
}

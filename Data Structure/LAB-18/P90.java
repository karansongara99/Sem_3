
//Linear Searching is traserving array each and every element check condition than will be not found it
//And Than Random Value In Array and Search element than after print the data
import java.util.*;

public class P90 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter N:");
        int n = sc.nextInt();
        int[] arr = new int[n];
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }
        int a = 0;
        System.out.println("Enter Searching Value");
        int item = sc.nextInt();
        int i = 0;
        while (i < n) {
            if (arr[i] == item) {
                System.out.println("Number Is Found In Index: " + i);
                a = 1;
                break;
            }
            ++i;
        }
        if (a == 0) {
            System.out.println("Number Is Not Found In Index:");
        }
    }
}

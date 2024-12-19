
//Selection Sorting
import java.util.*;

public class P94 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int m, loc, temp;
        System.out.println("Enter the number of size: ");
        int n = sc.nextInt();
        int[] arr = new int[n];
        System.out.println("Enter the elements of the array: ");
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }
        for (int i = 0; i < n - 1; i++) {
            m = arr[i];
            loc = i + 1;
            for (int j = i + 1; j < n; j++) {
                if (m > arr[j]) {
                    m = arr[j];
                    loc = j;
                }
            }
            if (arr[loc] < arr[i]) {
                temp = arr[loc];
                arr[loc] = arr[i];
                arr[i] = temp;
            }
        }
        System.out.println("Final Answer:::");
        for (int i = 0; i < n; i++) {
            System.out.print(arr[i] + " ");
        }
    }
}

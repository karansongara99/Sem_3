import java.util.Scanner;

public class Counting {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the number of size: ");
        int n = sc.nextInt();
        int[] arr = new int[n];
        System.out.println("Enter the elements of the array: ");
        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }
        int max = arr[0];
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] > max) {
                max = arr[i];
            }
        }
        System.out.println(max);
        Counting c = new Counting();
        c.counting_sort(arr, max);
        for (int i = 0; i < n; i++) {
            System.out.print(arr[i] + " | ");
        }

    }

    void counting_sort(int arr[], int k) {
        int[] c = new int[k + 1];
        for (int i = 0; i <= k; i++)
            c[i] = 0;

        int n = arr.length;
        for (int j = 0; j < n; j++) {
            c[arr[j]]++;
        }
        for (int i = 1; i <= k; i++) {
            c[i] = c[i] + c[i - 1];
        }
        int[] b = new int[n];

        for (int j = n - 1; j >= 0; j--) {
            b[c[arr[j]] - 1] = arr[j];
            c[arr[j]]--;
        }
    }
}
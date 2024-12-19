import java.util.Random;

public class P88 {
    public static void main(String[] args) {
        int n = 20; 
        int[] arr = new int[n];
        Random rand = new Random(); //Object Cerwt

        //  15 random values and insert 
        for (int i = 0; i < 15; i++) {
            int x = rand.nextInt(900000) + 100000;
            insert(arr, x, n);
        }

        // Display the final 
        System.out.println("Final values in the array:");
        for (int i = 0; i < n; i++) {
            System.out.print(arr[i] + " ");
        }
        System.out.println();
    }

    public static void insert(int[] arr, int x, int n) {
        int index = hashFunction(x);
        while (arr[index] != 0 && arr[index] != x) {
            index = (index + 1) % n;
        }
        arr[index] = x;
    }

    public static int hashFunction(int x) {
        return (x % 18) + 2;
    }
}
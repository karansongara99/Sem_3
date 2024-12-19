//Binary Searching is the divide in array and asecnding order
//Than Find mifddle element of array and comapre the target element
//If target element is equal to middle element then return middle element
//Array All user enter or static value of sequence element

import java.util.Scanner;

public class P91 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[] arr = new int[] { 1, 2, 3, 4, 5 };
        int lr = 0, up = 4, f = 0;
        System.out.println("Enter Searching Value");
        int item = sc.nextInt();
        while (lr <= up) // Lower condition check Upper
        {
            int mid = (lr + up) / 2;
            if (arr[mid] == item) // Array User Value Comapre
            {
                f = 1;
                break;
            }
            if (arr[mid] < item)                // Array value Condion check user scan
            {                                   // Array less than value chack left side
                                                // Array greater than value chack rit side
                lr = mid + 1;                   // Lower Endg index value cheack
            } else {
                up = mid - 1;                   // Upper Satring index value cheack
            }
        }
        if (f == 1) {
            System.out.println("Element Found");
        } else {
            System.out.println("Element Not Found");
        }

    }
}
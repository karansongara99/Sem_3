// import java.util.Scanner;

// public class PrimeorNot {
//     public static void main(String[] args) {
//         Scanner sc = new Scanner(System.in);
//         System.out.println("Enter a number: ");
//         int n = sc.nextInt();
//         int count = 0;
//         for (int i = 1; i <= n; i++) {
//             if (n % i == 0) {
//                 count++;
//             }
//         }
//         if (count == 2) {
//             System.out.println("Prime Number:");
//         } else {
//             System.out.println("Not Prime Number:");
//         }
//     }
// }

import java.util.Scanner;

public class PrimeorNot {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a number: ");
        int n = sc.nextInt();

        PrimeorNot pn = new PrimeorNot();
        pn.prime(n);
        
    }

    void prime(int n)
    {
        int count = 0;
        for (int i = 2; i <= n-1; i++) {
            if (n % i == 0) {
                count++;
                break;
            }
        }
        if (count == 0) {
            System.out.println("Prime Number:");
        } else {
            System.out.println("Not Prime Number:");
        }
    }
}


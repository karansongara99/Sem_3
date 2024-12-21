// import java.util.*;

// public class StudentPercentage {
//     public static void main(String[] args) {
//         Scanner sc = new Scanner(System.in);
//         System.out.println();
//         int phy = sc.nextInt();
//         int chem = sc.nextInt();
//         int bio = sc.nextInt();
//         int math = sc.nextInt();
//         int eng = sc.nextInt();
//         double per;
//         per = (phy + chem + bio + math + eng) / 5.0;
//         System.out.println("Percentage is " + per);
//         if(per>=60)
//         {
//             System.out.println("First Division");
//         }
//     }
// }

import java.util.*;

public class StudentPercentage {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double total = 0;
        for (int i = 1; i <= 5; i++) {
            System.out.println("Enter marks of subject" + i + ":");
            double sub = sc.nextDouble();
            total = total + sub;
        }
        double per = (total / 5.0);

        if (per >= 60) 
        {
            System.out.println("First Division...........");
        } 
        else if (per >= 50 && per < 59) 
        {
            System.out.println("Second Division............");
        } 
        else if (per >= 40 && per >= 49) 
        {
            System.out.println("Third Divsion..........");
        } 
        else 
        {
            System.out.println("Fail..........");
        }

    }
}

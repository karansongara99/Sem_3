import java.util.*;
public class SumMN {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.println("Enter M:");
        int m = sc.nextInt();
        System.out.println("Enter N:");
        int n = sc.nextInt();
        int a[] = new int [10];
        int sum =0;
        for(int i=0;i<n;i++)
        {
            a[i] = sc.nextInt();
        }
        for(int i=m;i<n;i++)
        {
            sum=sum+a[i];
        }
        System.out.println(sum);
    }
}

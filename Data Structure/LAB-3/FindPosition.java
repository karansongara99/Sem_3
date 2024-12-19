import java.util.*;
public class FindPosition
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter N:");
        int n = sc.nextInt();
        int a[] = new int [10];
        for(int i=0;i<n;i++)
        {
            a[i] = sc.nextInt();
        }
        int small = a[0];
        int large = a[0];
        for(int i=0;i<n;i++)
        {
            if(small>a[i])
            {
                small = a[i];
            }
        }
        for(int i=0;i<n;i++)
        {
            if(large<a[i])
            {
                large = a[i];
            }
        }
        System.out.println(small);
        System.out.println(large);
    }
}
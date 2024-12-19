import java.util.*;

class P28
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("N = ");
        int n = sc.nextInt();
        int[] a = new int [n];
        int min =0,max=0,sum=0,avg=0;
        for(int i=0 ; i<n ;i++)
        {
            a[i] = sc.nextInt();
        }
        for(int i=0 ; i<n ;i++)
        {
            sum += a[i];
            if( a[min] > a[i] )
                min = i;

            else if( a[max] < a[i] )
                max = i;
        }
        System.out.println("Min = "+a[min]);
        System.out.println("Max = "+a[max]);
        System.out.println("Sum = "+sum);
        System.out.println("Avg = "+(sum/n));
    }
}
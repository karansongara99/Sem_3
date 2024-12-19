import java.util.*;

class P21
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("N = ");
        int n = sc.nextInt();
        int[] a = new int [n+1];
        for(int i=0 ; i<n ;i++)
        {
            a[i] = sc.nextInt();
        }
        System.out.print("Befor insert : ");
        for(int i=0 ; i<n ;i++)
        {
            System.out.print(a[i]+" | ");
        }
        System.out.println("");
        System.out.print("index Num = ");
        int y = sc.nextInt();
        System.out.print("New Num = ");
        int x = sc.nextInt();
        for(int i=n-1 ; i >=y ; i--)
        {
            a[i+1] = a[i];
        }
        a[y] = x;
        System.out.print("After insert : ");
        for(int i=0 ; i<n+1 ;i++)
        {
            System.out.print(a[i]+" | ");
        }
    }
}
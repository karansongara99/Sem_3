import java.util.*;

class P22
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("N = ");
        int n = sc.nextInt();
        int[] a = new int [n];
        for(int i=0 ; i<n;i++)
        {
            a[i] = sc.nextInt();
        }
        System.out.print("Befor deletion : ");
        for(int i=0 ; i<n ;i++)
        {
            System.out.print(a[i]+" | ");
        }
        System.out.println("");
        System.out.print("index Num = ");
        int y = sc.nextInt();
        for(int i=y ; i < n-1 ; i++)
        {
            a[i] = a[i+1];
        }
        System.out.print("After deletion : ");
        for(int i=0 ; i<n-1 ;i++)
        {
            System.out.print(a[i]+" | ");
        }
    }
}
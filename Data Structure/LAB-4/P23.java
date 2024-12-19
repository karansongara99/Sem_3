import java.util.*;

class P23
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("N = ");
        int n = sc.nextInt();
        int[] a = new int [n];
        for(int i=0 ; i<=n-1 ;i++)
        {
            a[i] = sc.nextInt();
        }
        Arrays.sort(a);
        int[] b = Arrays.copyOf(a, n+1);
        System.out.print("Befor insert : ");
        for(int i=0 ; i<n ;i++)
        {
            System.out.print(b[i]+" | ");
        }
        System.out.println("");
        System.out.print("index Num = ");
        int y = sc.nextInt();
        System.out.print("New Num = ");
        int x = sc.nextInt();
        for(int i=n-1 ; i >=y ; i--)
        {
            b[i+1] = b[i];
        }
        b[y] = x;
        System.out.print("After insert : ");
        for(int i=0 ; i<n+1 ;i++)
        {
            System.out.print(b[i]+" | ");
        }
    }
}
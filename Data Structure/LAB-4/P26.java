import java.util.*;

class P26
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("First Array size = ");
        int n = sc.nextInt();
        int[] a = new int [n];
        for(int i=0 ; i<n ;i++)
        {
            a[i] = sc.nextInt();
        }

        System.out.print("Seconde Array size = ");
        int m = sc.nextInt();
        int[] b = new int [m];
        for(int i=0 ; i<n ;i++)
        {
            b[i] = sc.nextInt();
        }

        int[] c = new int [n+m];

        for(int i=0 ; i<n ;i++)
        {
            c[i] = a[i];
        }
        for(int i=0 ; i<m ;i++)
        {
            c[i+n] = b[i];
        }
        for(int i=0 ; i<n+m ;i++)
        {
           System.out.print(c[i]+" | ");
        }
    }
}
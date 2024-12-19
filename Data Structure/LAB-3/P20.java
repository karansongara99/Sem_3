import java.util.*;

class P20
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("N = ");
        int n = sc.nextInt();
        String[] a = new String [n];
        for(int i=0 ; i<n ;i++)
        {
            a[i] = sc.next();
        }
        for(int i=0 ; i<n ;i++)
        {
            for(int j=i+1 ; j<n ; j++)
            {
                if(a[j].charAt(0)<a[i].charAt(0))
                {
                    String swap = a[j];
                    a[j] = a[i];
                    a[i] = swap;
                }
            }
        }
        for(int i=0 ; i<n ;i++)
        {
            System.out.print(a[i]+" | ");
        }
    }
}
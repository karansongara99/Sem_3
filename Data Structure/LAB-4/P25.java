import java.util.*;

class P25
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("N = ");
        int n = sc.nextInt();
        int[] a = new int [n];
        for(int i=0 ; i<n ;i++)
        {
            a[i] = sc.nextInt();
        }
        for(int i=0 ; i<n ;i++)
        {
            for(int j=i+1  ; j<n ; j++)
            {
                if(a[i]==a[j])
                {
                    for(int k=j ; k < n-1 ; k++)
                    {
                        a[k] = a[k+1];
                    }
                }
            }
        }
        for(int i=0 ; i<n ;i++)
        {
            if(a[i]==a[i+1])
            {
                System.out.print(a[i]+" | ");
            }
            else
            {
                System.out.print(a[i]+" | ");

            }
        }
    }
}
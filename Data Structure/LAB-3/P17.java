import java.util.*;

class P17
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
            for(int j=i+1 ; j<n ; j++)
            {
                if(a[j]==a[i])
                    System.out.println(a[i]+" is duplicate");
            }
        }
    }
}
import java.util.*;

class P18
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
        System.out.print("New Num = ");
        int x = sc.nextInt();
        System.out.print("Replace Num = ");
        int y = sc.nextInt();
        for(int i=0 ; i<n ;i++)
        
        {
            if(a[i]==y)
            {
                a[i]=x;
                System.out.println("Position of replased num = "+i);
            }
        }
        for(int i=0 ; i<n ;i++)
        {
            System.out.print(a[i]+" | ");

        }
    }
}
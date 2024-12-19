import java.util.*;

class P32
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("N = ");
        int n = sc.nextInt();
        String[] x = new String [n];

        for(int i=0 ; i<n ;i++)
        {
            x[i] = sc.next();
        }

        int m = (int)(Math.random() * n);
        System.out.println("Your Word is : "+x[m]);
        System.out.println("On Index = "+m);
        System.out.print("Enter your anagram word :");
        char[] a = x[m].toCharArray();
        char[] b = sc.next().toCharArray();
        
        Arrays.sort(a);
        Arrays.sort(b);

        if( Arrays.toString(a).equals(Arrays.toString(b)))
            System.out.println("You WON.");
        else
            System.out.println("You LOSS");
    }
}
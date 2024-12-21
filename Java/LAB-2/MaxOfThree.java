import java.util.*;

public class MaxOfThree
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter A:");
        int a = sc.nextInt();
        System.out.println("Enter B:");
        int b = sc.nextInt();
        System.out.println("Enter C:");
        int c = sc.nextInt();
        if(a>=b && a>=c)
        {
            System.out.println("Max A:"+a);
        }
        else if(b>=b && b>=c)
        {
            System.out.println("Max B:"+b);
        }
        else
        {
            System.out.println("Max C:"+c);
        }
    }
}
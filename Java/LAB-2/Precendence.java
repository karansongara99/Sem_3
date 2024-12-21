import java.util.*;
public class Precendence
{
    public static void main(String[] args) {
        int a = 10 + 20 * 30;
        int b = 100 / 10 * 100;
        int c = 5 * 4 / 4 % 3;
        int d = 100 + 200 / 10 - 3 * 10;

        System.out.println("Answer is A:"+a);
        System.out.println("Answer is B:"+b);
        System.out.println("Answer is C:"+c);
        System.out.println("Answer is D:"+d);
    }
}
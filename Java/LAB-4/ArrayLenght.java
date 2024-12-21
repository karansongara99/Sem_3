
import java.util.Scanner;


public class ArrayLenght {
    public static void main(String[] args) {
        Scanner sc =new Scanner(System.in);
        System.out.println("Enter String:");
        String n = sc.nextLine();
        String str1 = n.substring(n.length()/2,n.length());
        System.out.println(str1);

    }
}
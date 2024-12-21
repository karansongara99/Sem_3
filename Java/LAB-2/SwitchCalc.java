import java.util.*;

public class SwitchCalc
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter A:");
        double a = sc.nextDouble();
        System.out.println("Enter B:");
        double b = sc.nextDouble();
        System.out.println("+-*/%");
        char ch = sc.next().charAt(0);

        switch (ch) {
            case '+':
                System.out.println("Addition = "+(a+b));        
                break;

            case '-':
                System.out.println("Addition = "+(a-b));       
                break;

            case '*':
                System.out.println("Addition = "+(a*b));        
                break;

            case '/':
                System.out.println("Addition = "+(a/b));        
                break;

            case '%':
                System.out.println("Addition = "+(a%b));        
                break;
        
            default:
                System.out.println("Defualt Operation");
                break;
        }
        
    }
}
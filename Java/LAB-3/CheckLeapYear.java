import java.util.*;
public class CheckLeapYear {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter Leap Year:");
        int year = sc.nextInt();
        if(year%400==0)
        {
            System.out.println("Leap Year:");
        }
        else if(year%4==0 && year%100!=0)
        {
            System.out.println("Leap Year:");
        }
        else
        {
            System.out.println("Not Leap Year:");
        }
    }
}

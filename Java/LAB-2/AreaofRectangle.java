import java.util.*;

public class AreaofRectangle
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter Lenght:");
        int l = sc.nextInt();
        System.out.println("Enter Breadth:");
        int b = sc.nextInt();
        double area = l * b;
        System.out.println(area);

    }
}
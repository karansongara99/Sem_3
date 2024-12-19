import java.util.*;

public class AreaOfCirle
{
	public static void main(String[] args) 
	{
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter Number:");
		double r = sc.nextDouble();
		double area = 3.14 * r * r;
		System.out.println(area);
	}
}
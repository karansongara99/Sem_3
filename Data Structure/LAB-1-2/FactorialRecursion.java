import java.util.*;
public class FactorialRecursion
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter Number:");
		int n = sc.nextInt();
		FactorialRecursion fr = new FactorialRecursion();
		int result = fr.fact(n);
		System.out.println(result);
	}
	int fact(int n)
	{
		if(n==1)
		{
			return 1;
		}
		else
		{
			return n*fact(n-1);
		}	
	}
}
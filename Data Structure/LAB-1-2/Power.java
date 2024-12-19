import java.util.*;

public class Power
{
	public static void main(String[] args) 
	{
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter Base");
		int b = sc.nextInt();
		System.out.println("Enter Power");
		int p = sc.nextInt();
		int ans = 1;
		for (int i=0;i<p ;i++ ) 
		{
			ans = ans * b;
		}
		System.out.println(ans);
	}
}
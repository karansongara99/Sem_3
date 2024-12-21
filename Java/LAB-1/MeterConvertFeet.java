import java.util.*;
public class MeterConvertFeet
{
	public static void main(String[] args) 
	{
		Scanner sc = new Scanner(System.in);
		double m = sc.nextDouble();
		double feet = m * 3.28;
		System.out.println("Final Answer:"+feet);
	}
}
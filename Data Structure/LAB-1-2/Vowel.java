import java.util.*;

public class Vowel
{
	public static void main(String[] args) 
	{
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter Name:");
		char name = sc.next().charAt(0);
		if(name == 'A' || name == 'E' || name == 'I' || name == 'O' || name == 'U' || 
			name == 'a' || name == 'e' || name == 'i' || name == 'o' || name == 'u')
		{
			System.out.println("Character is Vowel");
		}
		else
		{
			System.out.println("Character is Not Vowel");
		}
	}
}
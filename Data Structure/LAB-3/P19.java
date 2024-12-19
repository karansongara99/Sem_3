import java.util.*;

class P19
{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.println("Number of Rows : ");
        int rows = sc.nextInt();        
        for (int i = 0; i < rows; i++)
        {
            int number = 1;
 
            // Print initial spaces
            for (int j = 0; j < rows - i; j++)
            {
                System.out.print(" ");
            }
            for (int j = 0; j <= i; j++)
            {
                System.out.print(number + " ");
                number = number * (i - j) / (j + 1);
            }
            System.out.println();
        }
    }
}
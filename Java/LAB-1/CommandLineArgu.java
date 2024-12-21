import java.util.*;
public class CommandLineArgu
{
	public static void main(String[] args) {
		System.out.println("Name: "+args[0]);
		System.out.println("Roll No:"+args[1]);
		System.out.println("SPI: "+args[2]);

		int rollno = Integer.parseInt(args[1]);
		double spi = Double.parseDouble(args[2]);
		System.out.println(rollno+spi);
	}
}
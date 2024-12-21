// import java.util.*;
// import java.io.*;
// public class FahToCelsius {
//     public static void main(String[] args) {
//         Scanner sc = new Scanner(System.in);
//         System.out.println("Enter temperature in Fahrenheit");
//         double fahrenheit = sc.nextDouble();
//         double celsius = (fahrenheit - 32) * 5.0/9;
//         System.out.println(fahrenheit + " Fahrenheit is equal to " + celsius + " Celsius");
//     }
// }

import java.util.*;
import java.io.*;
public class FahToCelsius
{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter temperature in Celcuis");
        double celsius = sc.nextDouble();
        double fahrenheit = (celsius * 9/5) + 32;
        System.out.println(fahrenheit);
    }
}

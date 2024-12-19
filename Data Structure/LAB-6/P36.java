import java.util.Scanner;

public class P36 {
    public static void main(String[] args) {

        P36 obj = new P36();
        obj.celfeh();
        obj.fehcel();

    }

    void celfeh() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter temperature in Fahrenheit");
        double fahrenheit = sc.nextDouble();
        double celsius = (fahrenheit - 32) * 5.0/9;
        System.out.println(fahrenheit + " Fahrenheit is equal to " + celsius + " Celsius");
    }

    void fehcel() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter temperature in Celcuis");
        double celsius = sc.nextDouble();
        double fahrenheit = (celsius * 9 / 5) + 32;
        System.out.println(celsius + " Celsius is Equal to" + fahrenheit + "Fahrentiat");
    }
}

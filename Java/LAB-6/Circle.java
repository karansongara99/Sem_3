
import java.util.Scanner;

class Circle {
    double area;
    double radius;

    public double getvalue(double radius) {
        area = 3.14 * radius * radius;
        return area;
    }
}

class FinalCircle {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the radius of the circle");
        double radius = sc.nextDouble();
        Circle circle = new Circle();
        double a = circle.getvalue(radius);
        System.out.println(a);
    }
}

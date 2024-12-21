public class DemoTryCatch {

    public static void main(String[] args) {
        int a = 10, b = 2;
        int c = 50;
        try {
            System.out.println("A/B" + (a / b));
        } catch (ArithmeticException e) {
            System.out.println("Arithmetic Exception");
            System.out.println("C=(A+b)"+(c=(a+b)));
            System.out.println(c);
        }
    }
}
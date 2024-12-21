
public class AddTwoCompl {
    private double real;
    private double imag;

    // Default constructor
    public AddTwoCompl() {
        this.real = 0.0;
        this.imag = 0.0;
    }

    // Parameterized constructor
    public AddTwoCompl(double real, double imag) {
        this.real = real;
        this.imag = imag;
    }

    // Method to add two complex numbers
    public AddTwoCompl add(AddTwoCompl other) {
        return new AddTwoCompl(this.real + other.real, this.imag + other.imag);
    }

    public String toString() {
        return real + " + " + imag + "i";
    }

    public static void main(String[] args) {
        AddTwoCompl c1 = new AddTwoCompl(2, 3);
        AddTwoCompl c2 = new AddTwoCompl(4, 5);
        AddTwoCompl c3 = c1.add(c2);

        System.out.println("First Complex number: " + c1);
        System.out.println("Second Complex number: " + c2);
        System.out.println("Sum of Complex numbers: " + c3);
    }
}

public class CheckStatic {
    private int instanceVar;
    private static int staticVar = 10;

    // Constructor
    public CheckStatic(int instanceVar) {
        this.instanceVar = instanceVar;
    }

    // Method to display instance and static variables
    public void display() {
        System.out.println("Instance Variable: " + this.instanceVar);
        System.out.println("Static Variable: " + CheckStatic.staticVar);
    }

    // Static method to display static variable
    static void displayStatic() {
        System.out.println("Static Variable from static method: " + staticVar);
  
    }

    public static void main(String[] args) {
        CheckStatic obj1 = new CheckStatic(5);
        obj1.display();

        // Accessing static method
        CheckStatic.displayStatic();
    }
}

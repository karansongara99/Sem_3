public class p1 {
    public static void main(String[] args) {
        int n = 5; // Height of the triangles

        // Generate the reverse equilateral triangle
        for (int i = n; i >= 1; i--) {
            // Print leading spaces
            for (int j = i; j < n; j++) {
                System.out.print(" ");
            }
            // Print X characters
            for (int j = 1; j <= (2 * i - 1); j++) {
                System.out.print("*");
            }
            System.out.println();
        }

        // Generate the regular equilateral triangle
        for (int i = 2; i <= n; i++) {
            // Print leading spaces
            for (int j = i; j < n; j++) {
                System.out.print(" ");
            }
            // Print X characters
            for (int j = 2; j <= (2 * i - 0); j++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}
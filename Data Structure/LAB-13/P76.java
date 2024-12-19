public class P76 {
    // Function to add two polynomials
    static int[] add(int[] A, int[] B) {
        int maxSize = Math.max(A.length, B.length);
        int[] sum = new int[maxSize];

        // Add coefficients of both polynomials
        for (int i = 0; i < A.length; i++) {
            sum[i] += A[i];
        }
        for (int i = 0; i < B.length; i++) {
            sum[i] += B[i];
        }
        
        return sum;
    }

    // Function to print a polynomial
    static void printPoly(int[] poly) {
        for (int i = 0; i < poly.length; i++) {
            if (poly[i] != 0) {
                System.out.print(poly[i]);
                if (i != 0) {
                    System.out.print("x^" + i);
                }
                if (i != poly.length - 1) {
                    System.out.print(" + ");
                }
            }
        }
    }

    public static void main(String[] args) {
        // Polynomial A: 5 + 10x^2 + 6x^3 represented as {5, 0, 10, 6}
        int[] A = {5, 0, 10, 6};
        
        // Polynomial B: 1 + 2x + 4x^2 represented as {1, 2, 4}
        int[] B = {1, 2, 4};
        
        System.out.println("First polynomial is:");
        printPoly(A);
        
        System.out.println("\nSecond polynomial is:");
        printPoly(B);
        
        int[] sum = add(A, B);
        
        System.out.println("\nSum polynomial is:");
        printPoly(sum);
    }
}
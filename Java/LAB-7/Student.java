import java.util.*;

public class Student {
    Scanner sc = new Scanner(System.in);
    int id_no, no_of_subject_registered;
    String[] subject_code = { "21020CS501", "21020CS502", "21020CS503", "21020CS504", "21020CS505" };
    String[] grade;
    int[] credit = { 6, 6, 5, 6, 6 };
    double spi;

    
    public Student(int id_no, int no_of_subject_registered) {
        this.id_no = id_no;
        this.no_of_subject_registered = no_of_subject_registered;

        
        grade = new String[no_of_subject_registered];
        int[] point = new int[no_of_subject_registered];

        
        int totalPoints = 0;
        int totalCredits = 0;

        for (int i = 0; i < no_of_subject_registered; i++) {
            System.out.println("Enter Grade for " + subject_code[i]);
            grade[i] = sc.next();

            switch (grade[i]) {
                case "AA":
                    point[i] = 10;
                    break;
                case "AB":
                    point[i] = 9;
                    break;
                case "BB":
                    point[i] = 8;
                    break;
                case "BC":
                    point[i] = 7;
                    break;
                case "CC":
                    point[i] = 6;
                    break;
                case "CD":
                    point[i] = 5;
                    break;
                case "DD":
                    point[i] = 4;
                    break;
                case "F":
                    point[i] = 0;
                    break;
                default:
                    System.out.println("Invalid Grade");
                    point[i] = 0;
                    break;
            }

            totalPoints += point[i] * credit[i]; 
            totalCredits += credit[i]; 
        }

        if (totalCredits > 0) {
            spi = (double) totalPoints / totalCredits;
        } else {
            spi = 0;
        }

        System.out.println("SPI for student ID " + id_no + " is: " + spi);
    }

    public static void main(String[] args) {
        // Example usage
        Student student = new Student(1, 5);
    }
}

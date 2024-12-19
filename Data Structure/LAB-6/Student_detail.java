import java.util.Scanner;

class P35 {
    String Enrollment_No;
    String Name;
    int Semester;
    double CPI;

    void scanData() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter Enrollment No: ");
        Enrollment_No = sc.nextLine();
        System.out.print("Enter Name: ");
        Name = sc.nextLine();
        System.out.print("Enter Semester: ");
        Semester = sc.nextInt();
        System.out.print("Enter CPI: ");
        CPI = sc.nextDouble();
    }

    void printData() {
        System.out.println("Enrollment No: " + Enrollment_No);
        System.out.println("Name: " + Name);
        System.out.println("Semester: " + Semester);
        System.out.println("CPI: " + CPI);
    }
}

public class Student_detail 
{
    public static void main(String[] args) {
        int n = 5; 
        P35[] students = new P35[n];

        for (int i = 0; i < n; i++) {
            students[i] = new P35();
            System.out.println("Enter details for student " + (i + 1) + ":");
            students[i].scanData();
        }

        System.out.println("\nStudent Information:");
        for (int i = 0; i < n; i++) {
            System.out.println("\nStudent " + (i + 1) + ":");
            students[i].printData();
        }
    }
}

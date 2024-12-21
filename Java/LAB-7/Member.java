import java.util.*;

class Member {
    int name;
    int age;
    String address;
    long phone;
    double salary;

    void setMemberDeatil() {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter your name:");
        name = sc.nextInt();
        System.out.println("Enter Your Age:");
        age = sc.nextInt();
        System.out.println("Enter Your Address:");
        address = sc.nextLine();
        System.out.println("Enter Your Phone Number:");
        phone = sc.nextLong();
        System.out.println("Enter Your Salary:");
        salary = sc.nextDouble();
    }

    void printDetail() {
        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
        System.out.println("Address: " + address);
        System.out.println("Phone Number: " + phone);
        System.out.println("Salary: " + salary);

    }
}

class Employee extends Member{
    String speclization;

    void setEmployee(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter Specalization::");
        speclization = sc.nextLine();
    }

    void printEmployee(){
        printDetail();
        System.out.println("Name: "+speclization);
    }
}

class Manager extends Member{
    String department;

    void setManager(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter Department::");
        department = sc.nextLine();
    }

    void printManager(){
        printDetail();
        System.out.println("Department: "+department);
    }
}

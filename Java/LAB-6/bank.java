import java.util.Scanner;

public class bank {
    int accountNo;
    String userName;
    String email;
    String accountType;
    double accountBalance;

    void getAccountDetails(){
        Scanner sc = new Scanner(System.in);
        System.err.println("Enter Bank No:");
        accountNo = sc.nextInt();
        System.out.println("Enter Username:");
        userName = sc.nextLine();
        System.out.println("Enter Email:");
        email = sc.nextLine();
        System.out.println("Enter Account Type:");
        accountType = sc.nextLine();
        System.out.println("Enter Account Balance:");
        accountBalance = sc.nextDouble();
    }

    void displayDetails(){
        System.out.println("Account No: "+accountNo);
        System.out.println("Username: "+userName);
        System.out.println("Email: "+email);
        System.out.println("Account Type: "+accountType);
        System.out.println("Account Balance: "+accountBalance);
    }
}

class BankAccount{
    public static void main(String[] args) {
        bank b = new bank();
        b.getAccountDetails();
        b.displayDetails();
    }
}
